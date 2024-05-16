import numpy as np

# 设置矩阵的大小
matrix_size_A, matrix_size_B, matrix_size_C = 32, 32, 512
low, high = -8, 8
matrix_A_file_path = './data/matrix_A.bin'
matrix_B_file_path = './data/matrix_B.bin'

use_data = True
# use_data = False

if use_data:

    # 以二进制模式打开文件
    with open(matrix_A_file_path, 'rb') as file:
        # 读取整个文件内容
        binary_data = file.read()

        matrix_A = np.frombuffer(binary_data, dtype=np.int8).reshape(matrix_size_A, matrix_size_B).astype(np.int8)

    with open(matrix_B_file_path, 'rb') as file:
        # 读取整个文件内容
        binary_data = file.read()

        matrix_B = np.frombuffer(binary_data, dtype=np.int8).reshape(matrix_size_B, matrix_size_C).astype(np.int8)

else:
# 创建一个32x32的int8类型的零矩阵
    matrix_A = np.zeros((matrix_size_A, matrix_size_B), dtype=np.int8)

    # 随机选择100个位置
    random_indices = np.random.choice(matrix_size_A * matrix_size_B, size=4, replace=True)

    # 使用列表推导式来更新这些随机位置的值为指定的非零值
    matrix_A[np.unravel_index(random_indices, (matrix_size_A, matrix_size_B))] = 1
    print(matrix_A)


    matrix_B = np.random.randint(low + 8, high + 1, (matrix_size_B, matrix_size_C), dtype=np.int8) - 8
    print(matrix_B)

matrix_C = matrix_A @ matrix_B

print(matrix_C)

if not use_data:
    matrix_A.tofile("./data/matrix_A.bin")
    matrix_B.tofile("./data/matrix_B.bin")
    matrix_C.tofile("./data/matrix_C.bin")

    with open('./data/matrix_A.bin', 'rb') as file1:
        # 读取第一个文件的全部内容
        data1 = file1.read()
    # 打开第二个文件用于读取
    with open('./data/matrix_B.bin', 'rb') as file2:
        # 读取第二个文件的全部内容
        data2 = file2.read()

    combined_data = data1 + data2
    # 打开新文件用于写入
    with open('./data/dram.bin', 'wb') as outfile:
        outfile.write(combined_data)