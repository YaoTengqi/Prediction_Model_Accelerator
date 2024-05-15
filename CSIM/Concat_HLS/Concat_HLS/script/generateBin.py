import numpy as np
import pandas as pd
import os

def generate_tensor(rows, cols):
    # 生成随机数据的张量
    return np.random.randint(0, 100, size=(rows, cols), dtype=np.int8)

def save_to_binary_1(data,filename):
    # 将数据保存到二进制文件中
    with open(filename, 'wb') as f:
        data.tofile(f)
        
def save_to_binary_2(data_a, data_b, filename):
    # 将数据保存到二进制文件中
    with open(filename, 'wb') as f:
        data_a.tofile(f)
        data_b.tofile(f)


def main():
    # 生成两个张量
    rows, cols = 4, 32
    data_a = generate_tensor(rows, cols)
    data_b = generate_tensor(rows, cols)
    data_combined = np.concatenate((data_a, data_b), axis=1)

    # 保存数据到二进制文件
    output_dir = "/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Concat_HLS/Concat_HLS/data/"
    os.makedirs(output_dir, exist_ok=True)
    save_to_binary_1(data_combined, os.path.join(output_dir, "output_data.bin"))
    save_to_binary_2(data_a, data_b, os.path.join(output_dir, 'dram.bin'))

    print("Data generation and saving completed.")

    # 将张量转换为 DataFrame
    df_a = pd.DataFrame(data_a, columns=[f"Col_{i}" for i in range(cols)])
    df_b = pd.DataFrame(data_b, columns=[f"Col_{i}" for i in range(cols)])
    df_combined = pd.DataFrame(data_combined, columns=[f"Col_{i}" for i in range(cols * 2)])

    # 打印数据
    print("Data A:")
    print(df_a)
    print("\nData B:")
    print(df_b)
    print("\nCombined Data:")
    print(df_combined)

if __name__ == "__main__":
    main()
