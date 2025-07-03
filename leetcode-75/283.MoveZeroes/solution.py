def moveZeroes(self, nums):
  """
  :type nums: List[int]
  :rtype: None Do not return anything, modify nums in-place instead.
  """

  non_zero = []
  zeroCount = 0
  for i in range(len(nums)):
    if nums[i] == 0:
      zeroCount += 1
    elif nums[i] != 0:
      non_zero.append(nums[i])
  result = non_zero + ([0] * zeroCount)
  nums[:] = []
  nums += result