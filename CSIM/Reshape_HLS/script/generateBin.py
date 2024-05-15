import numpy as np
import pandas as pd
import os

def generate_tensor(rows, cols):
    # 生成随机数据的张量
    return np.random.randint(0, 100, size=(rows, cols), dtype=np.int8)

def save_to_binary(data,filename):
    # 将数据保存到二进制文件中
    with open(filename, 'wb') as f:
        data.tofile(f)


def main():
    rows, cols = 8, 32
    data_a = generate_tensor(rows, cols)
    data_reshape = np.transpose(data_a)

    # 保存数据到二进制文件
    output_dir = "/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Reshape_HLS/data/"
    os.makedirs(output_dir, exist_ok=True)    
    save_to_binary(data_a, os.path.join(output_dir, "dram.bin"))
    save_to_binary(data_reshape, os.path.join(output_dir, "output_data.bin"))

    print("Data generation and saving completed.")

    # 将张量转换为 DataFrame
    df_a = pd.DataFrame(data_a, columns=[f"Col_{i}" for i in range(cols)])
    df_combined = pd.DataFrame(data_reshape, columns=[f"Col_{i}" for i in range(rows)])

    # 打印数据
    print("Data A:")
    print(df_a)
    print("\nReshape Data:")
    print(df_combined)

if __name__ == "__main__":
    main()
