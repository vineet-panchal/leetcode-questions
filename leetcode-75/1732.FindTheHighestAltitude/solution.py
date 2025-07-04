def largestAltitude(self, gain):
  """
  :type gain: List[int]
  :rtype: int
  """
  highest = 0
  altitude = 0
  for i in range(len(gain)):
    altitude += gain[i]
    if highest <= altitude:
      highest = altitude
  return highest

