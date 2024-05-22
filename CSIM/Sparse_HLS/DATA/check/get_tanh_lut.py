import torch
import numpy as np

def get_tanh_lut( data,scale):
    
    print(data)
    data=data*scale
    print(data)
    lut=data.tanh()
    lut=lut/scale
    lut=lut.round()
    print(lut.to(torch.int))
    return lut

def eval(data,lut,scale):
    float_data = data*scale
    float_tanh = torch.tanh(float_data)
    float_tanh=float_tanh/scale
    lut_tanh=[]
    for index, i in enumerate(data):
        lut_tanh.append(lut[int(i.item()+128)].item())
    print(float_tanh)
    print(lut_tanh)
    

# {0..127}   {-1 -2... -128}
array1 = np.linspace(0,127,128)
array2 = np.linspace(-128,-1,128)
data = torch.tensor(np.concatenate((array1, array2)))
# range_low=-128
# range_high=128

# data=torch.tensor(np.linspace(combined_arr.min(),combined_arr.max(),num=len(combined_arr)))

lut = get_tanh_lut(data,0.0170784)
eval(data,lut,0.0170784)
