def reverseWords(s):
  """
  :type s: str
  :rtype: str
  """
  result = ""
  word = ""
  print("hello world")
  for i in range(3, 10):
    print(s)
  # for i in range(len(s)):
  #   print(i)
  #   if (s.charAt(i) != " "):
  #     word += s.charAt(i)
  #   if (s.charAt(i) == " "):
  #     result += word[::-1]
  #     word = ""
  #     result += " "
  return result  

print(reverseWords("the sky is blue"))