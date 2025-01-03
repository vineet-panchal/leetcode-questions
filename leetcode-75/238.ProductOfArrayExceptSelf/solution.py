
def productExceptSelf(nums):
  """
  :type nums: List[int]
  :rtype: List[int]
  """
  output = [1] * len(nums)
  left = 1
  for i in range(len(nums)):
    output[i] *= left
    left *= nums[i]
        
  right = 1
  for i in range(len(nums) - 1, -1, -1):
    output[i] *= right
    right *= nums[i]
    
  return output   
  
  # answer = nums
  # print(answer)
  # count = 0
  # product = 1
  
  
  # for i in range(len(nums)):
  #   if (count != i): # 0 != 0 
  #     product *= nums[i]
  #     answer[count] = product
  #     count += 1
  # return answer

  #answer = []
  #for i in range(len(nums)):
#    product = 1
#    for j in range(len(nums)):
#      if (i != j):
#        product *= nums[j]
  #  answer.append(product)
  #return answer
    
print(productExceptSelf([1, 2, 3, 4]))