def kidsWithCandies(candies, extraCandies):
  result = []
  max = candies[0]
  for i in range(len(candies)):
    if (candies[i] > max):
      max = candies[i]
  for i in range(len(candies)):
    if (candies[i] + extraCandies >= max):
      result.append(True)
    else:
      result.append(False)
  return result

if __name__ == '__main__':
  candies = [2,3,5,1,3]
  extraCandies = 3
  print(kidsWithCandies(candies, extraCandies))