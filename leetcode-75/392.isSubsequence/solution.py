def isSubsequence(self, s, t):
  """
  :type s: str
  :type t: str
  :rtype: bool
  """
  ptrS, ptrT = 0,0
  while(ptrS < len(s) and ptrT < len(t)):
    if s[ptrS] == t[ptrT]:
      ptrS += 1
    ptrT += 1
  return ptrS == len(s)
