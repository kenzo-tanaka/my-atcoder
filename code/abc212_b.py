password = list(map(int, input()))

result = 'Strong'

if password[0] == password[1] == password[2] == password[3]:
  result = 'Weak'
else:
  for i in [1,2,3]:
    idx = i - 1
    nex_idx = idx + 1
    
    if password[nex_idx] == (password[idx] + 1) % 10:
      if i == 3:
        result = 'Weak'
    else:
      break
  
print(result)
