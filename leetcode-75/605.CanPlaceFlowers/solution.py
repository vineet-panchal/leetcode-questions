def canPlaceFlowers(flowerbed, n):
  for i in range(len(flowerbed)):
    left = i == 0 or flowerbed[i-1] == 0
    right = i == len(flowerbed) - 1 or flowerbed[i+1] == 0
    if left and right and flowerbed[i] == 0:
      n -= 1
  return n <= 0

if __name__ == '__main__':
  flowerbed = [1,0,0,0,1]
  n = 1
  print(canPlaceFlowers(flowerbed, n)) # True