def twoSum(nums, target):
    
  output = []
  sum = target
  for i in range(len(nums)):
    sum -= nums[i]
    for j in range(len(nums)):
      if (i != j):
        if (nums[j] == sum):
          output.append(i)
          output.append(j)                 
    sum += nums[i]
  return output