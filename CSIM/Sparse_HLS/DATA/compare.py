def read_bytes_from_file(file_path, base_address, length):
    with open(file_path, 'rb') as file:
        file.seek(base_address)
        data = file.read(length)
    return data

def compare_bytes(data1, data2, block_size):
    block_count = len(data1) // block_size
    for block_index in range(block_count):
        start = block_index * block_size
        end = start + block_size
        if data1[start:end] != data2[start:end]:
            print(f"错误: 组 {block_index} 不匹配")
            print(f"组 {block_index} - 文件1: {data1[start:end]}")
            print(f"组 {block_index} - 文件2: {data2[start:end]}")
            break  # 如果只需要找到第一个不匹配的组，可以取消注释这一行

def main():
    # 文件路径
    file1_path = './data/output_data.bin'
    file2_path = './data/dram.bin'

    # 基地址和长度
    base_address1 = 20480  # 第n个字节的地址
    length = 16384  # 要比较的字节长度

    base_address2 = 0  # 第n个字节的地址

    # 块大小
    block_size = 16

    # 确保长度是块大小的整数倍
    assert length % block_size == 0

    # 读取两个文件中的数据
    data1 = read_bytes_from_file(file1_path, base_address2, length)
    data2 = read_bytes_from_file(file2_path, base_address1, length)

    # 比较数据
    compare_bytes(data1, data2, block_size)

if __name__ == "__main__":
    main()