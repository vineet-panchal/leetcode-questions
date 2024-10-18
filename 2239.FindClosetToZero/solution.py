def findClosestNumber(nums):
  """
  :type nums: List[int]
  :rtype: int
  """
  closet = nums[0]
  for i in range(len(nums)):
    if (abs(nums[i]) < abs(closet)):
      closet = nums[i]
    elif (abs(nums[i]) == abs(closet)):
      if (nums[i] > closet):
        closet = nums[i]
  return closet

# Case 1:
print("Case 1: " + findClosestNumber([-4,-2,1,4,8])) # --> 1

# Case 2:
print("Case 2: " + findClosestNumber([2,-1,1])) # --> 1