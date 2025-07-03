def compress(self, chars):
  """
  :type chars: List[str]
  :rtype: int
  """
  s = ""
  seen = {}
  for i in range(len(chars)):
    if chars[i] not in seen:
      seen[chars[i]] = 1
    elif chars[i] in seen:
      seen[chars[i]] += 1
  # print(seen)
  
  for key, value in seen.items():
    s += key
    if value > 1:
      s += str(value)
  print(s)
  
  chars.clear()
  for i in range(len(s)):
    chars.append(s[i])
  # print(chars)
  return len(chars)
  
  
  
if __name__ == "__main__":
  compress(None, ["a", "a", "b", "b", "c", "c", "c"])