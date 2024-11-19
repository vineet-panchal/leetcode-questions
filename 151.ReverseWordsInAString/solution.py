def reverseWords(s):
  """
  :type s: str
  :rtype: str
  """
  words = s.split() # split the string based off spaces into an array Ex: ["hello", "world"]
  words.reverse() # reverse the array ["world", "hello"]
  return ' '.join(words) # join words array together as a string with a space "world hello"

print(reverseWords("the sky is blue"))