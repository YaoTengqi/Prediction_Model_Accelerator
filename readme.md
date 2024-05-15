# **[Prediction_Model_Accelerator](https://github.com/YaoTengqi/Prediction_Model_Accelerator)**

## Concat

```cpp
void concat(
		uint32_t input_data_addr1,
		uint32_t input_data_addr2,
		uint32_t output_data_addr3,
		t_AXI_DataType *inputs,
		t_AXI_DataType *outputs);
```

### 1. 原理 

按列拼起来

连接前： Tensor 1:

 [[1 2]

 [3 4]] 	

Tensor 2: 

[[5 6] 

[7 8]] 

连接后： 

Concatenated Tensor: 

[[1 2 5 6] 

[3 4 7 8]]

### 2. 硬件实现 

| 输入/输出      | 解释                                                         |
| -------------- | ------------------------------------------------------------ |
| 输入：inputs   | DDR的输入数据，为两个要进行concat操作的tensor数据            |
| 输入：addr1    | tensor1在DDR中的地址                                         |
| 输入：addr2    | tensor2在DDR中的地址                                         |
| 输入：addr3    | concat操作完成后将新的数据存回的地址                         |
|                | 操作：将两块地址存储的数据取出后，**按列拼接**(如1.原理所示)拼接并存回addr3完成concat操作 |
| 输出： outputs |                                                              |

### 3. 函数设计

| 函数名                                                       | 返回值 | 解释                                                         |
| ------------------------------------------------------------ | ------ | ------------------------------------------------------------ |
| template<typename t_AXI_DataType, typename t_INP_ROW_DataType, typename t_OUT_ROW_DataType, unsigned int ROWS, uint32_t COLS><br/>void **read_inputs**(t_AXI_DataType *inputs,hls::stream<t_OUT_ROW_DataType> &data_stream,unsigned int input_data_addr1,unsigned int input_data_addr2) | /      | 将数据从DRR中读出来，其中tensor1从addr1读出；tensor2从addr2读出；每次读出一行数据，用memcpy完成拼接后写入data_stream数据流中 |
| template<typename t_AXI_DataType, typename t_OUT_ROW_DataType, uint32_t ROWS, uint32_t COLS><br/>void **store**(hls::stream<t_OUT_ROW_DataType> &data_stream_out,t_AXI_DataType *outputs,unsigned int output_data_addr3) | /      | 将read_inputs()写好的data_stream数据流在此函数中按行取出(有对应的数据位宽**t_OUT_ROW_DataType**)，存入临时buffer中后再用memcpy将数据从临时buffer存入outputs[addr3]中，其中addr3为起始地址 |

### 4.C仿真问题

| 问题                                           | 解决方法                                                     |
| ---------------------------------------------- | ------------------------------------------------------------ |
| **params.hpp**中的**t_ROW_DataType**该如何计算 | ``#define INP_ROW_DATA_WIDTH COLS * INP_DATA_WIDTH	// 一行输入数据占的位宽``<br/>``#define OUT_ROW_DATA_WIDTH INP_ROW_DATA_WIDTH * 2   // 一行输出数据占的位宽`` |
| **把ROWS COLS也改为从AXI_LITE传来**            | ~~**待解决:** 根据**PE**对流进行分割~~ **done**              |

### 5.RTL仿真

RTL仿真问题

| 问题                                                         | 解决方法                                          |
| ------------------------------------------------------------ | ------------------------------------------------- |
| 现在可以从DDR正常取出数据RDATA正确                           |                                                   |
| data_concat1与data_concat2取出的数据不对，计算的结果data_out也不对 | ~~初步怀疑是地址问题？~~ **done**是代码的逻辑问题 |



## Reshape

```cpp
void reshape(
		uint32_t data_addr,
		t_AXI_DataType *inputs,
		t_AXI_DataType *outputs);
```

### 1. 原理 

将矩阵进行转置

Tensor：

[[1 2]

[3 4]

[5 6]] 	

reshape后： 

Reshape Tensor: 

[[1 3 5 7] 

[2 4 6 8]]

### 2. 硬件实现 

| 输入/输出    | 解释                                                         |
| ------------ | ------------------------------------------------------------ |
| 输入：inputs | DDR的输入数据，为要进行reshape操作的tensor数据               |
| 输入：addr   | tensor在DDR中的地址,也是要写回的地址                         |
|              | 操作：将数据按行取出后，按列拼接起来形成一个新的矩阵完成转置reshape |

### 3. 函数设计

| 函数名                                                       | 返回值 | 解释                                                         |
| ------------------------------------------------------------ | ------ | ------------------------------------------------------------ |
| template<typename t_AXI_DataType, typename t_DataType_Item, typename t_OUT_ROW_DataType, unsigned int ROWS, uint32_t COLS><br/>void **read_inputs**(t_AXI_DataType *inputs,hls::stream<t_OUT_ROW_DataType> &data_stream,unsigned int input_data_addr) | /      | 将inputs中的数据按列进行循环，每次取这一列的每一行的数据，每个数据大小类型为int8，拼成``WideType<t_DataType_Item, ROWS> ``大小后写入流中完成reshape |
| template<typename t_AXI_DataType, typename t_OUT_ROW_DataType, uint32_t ROWS, uint32_t COLS><br/>void **store**(hls::stream<t_OUT_ROW_DataType> &data_stream_out,t_AXI_DataType *outputs,unsigned int output_data_addr) | /      | 将数据流中的数据存回DDR，存回的地址为原地址addr              |

### 4. 问题

| 问题                 | 解决方法 |
| -------------------- | -------- |
| 使用**traspose.hpp** |          |





## Sparse

### 1. 原理 

将**邻接矩阵**与**特征矩阵**相乘

**邻接矩阵(32*32)：**

[[0 0 0 ... 0 0 0]
 [1 0 0 ... 1 0 0]
 [0 0 0 ... 0 0 0]
 ...
 [0 0 0 ... 0 1 0]
 [0 0 0 ... 0 0 0]
 [0 0 0 ... 0 0 0]]	

**特征矩阵(32*512):** 

[[-7 -2 -3 ... -2 -7 -6]
 [-2 -4 -5 ...  0 -8 -3]
 [-1 -5 -5 ... -1 -6 -3]
 ...
 [-3 -1 -3 ... -2 -3 -5]
 [-5 -6 -2 ... -1 -7 -3]
 [-7 -1 -7 ...  0 -1 -7]]

**计算结果(32*512):**

[[ -1  -7  -8 ...   0  -4  -1]
 [-19 -19 -15 ... -16 -24 -22]
 [ -6  -1  -2 ...  -5   0  -8]
 ...
 [-16 -12  -7 ... -12 -15 -15]
 [ -3 -15  -8 ...  -8  -6  -5]
 [  0   0   0 ...   0   0   0]]



![Sparse整体思路](./SOURCE/pic/sparse.png)

![LOAD模块](./SOURCE/pic/load.png)

![DECODE模块](./SOURCE/pic/decode.png)

![MUL模块](./SOURCE/pic/mul.png)



### 2. 硬件实现 

| 输入/输出 | 解释                                            |
| --------- | ----------------------------------------------- |
| inputs    | DDR的输入数据，为要进行sparse操作的两个矩阵数据 |
| addr1     | 邻接矩阵的addr                                  |
| addr2     | 特征矩阵的addr                                  |
| addr3     | 输出矩阵的addr                                  |

### 3. 函数设计

| 函数名                                                       | 返回值 | 解释                                                         |
| ------------------------------------------------------------ | ------ | ------------------------------------------------------------ |
| void **read_inputs**(t_AXI_DataType *inputs,hls::stream<t_OUT_ROW_DataType> &data_stream,unsigned int input_data_addr) | /      | 将inputs中的数据按列进行循环，每次取这一列的每一行的数据，每个数据大小类型为int8，拼成``WideType<t_DataType_Item, ROWS> ``大小后写入流中完成reshape |
| template<typename t_AXI_DataType, typename t_OUT_ROW_DataType, uint32_t ROWS, uint32_t COLS><br/>void **store**(hls::stream<t_OUT_ROW_DataType> &data_stream_out,t_AXI_DataType *outputs,unsigned int output_data_addr) | /      | 将数据流中的数据存回DDR，存回的地址为原地址addr              |

### 4. 问题

| 问题                 | 解决方法 |
| -------------------- | -------- |
| 使用**traspose.hpp** |          |
