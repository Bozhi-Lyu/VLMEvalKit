import torch
import flash_attn

tensor = torch.tensor([1.0]).cuda()
print(torch.cuda.memory_allocated())
print(torch.cuda.memory_reserved())
print(flash_attn.__version__)