# Time Complexity

## What is Time Complexity?

- Time complexity represents the amount of time an algorithm takes to run as a function of the length of the input.
- It provides an upper bound on the running time, helping us understand the worst-case scenario in terms of performance.

<img width="550" height="382" alt="Image" src="https://github.com/user-attachments/assets/148ff757-a2bf-4541-af4e-895246b44099" />

## O(1)

- Constant time complexity. Could be
  - Hashmap lookup
  - Array access and update
  - Pushing and popping elements from a stack
  - Finding and applying math formula
  - Typically for n > 10⁹

- The following code is O(1) because it executes a constant number of operations:

```python
a = 5
b = 7
c = 4
d = a + b + c + 153
```

## O(log n)

- log(N) grows VERY slowly. 
- log(1,000,000) is only about 20.
- In fact, lookup by primary key in a relational database is log(N) (many mainstream relational databases such as postgres use B-trees for indexing by default, and searching in a B-tree is log(N)).

- examples of log(N) are:
  - Binary search or variant
  - Balanced binary search tree lookup
  - Processing the digits of a number
  - Typically for n > 10⁸
- Note: Unless specified, we assume that log(N) refers to log₂(N) or "log base 2 of N"
- The following code is O(log(N)) because N is halved each iteration, so the amount of work is logarithmic:

```python
N = 100000000
while N > 0:
  # some constant operation
  N //= 2
```

## O(n)

- Linear time typically means looping through a linear data structure a constant number of times. Most commonly, this means
  - Going through array/linked list
  - Two pointers
  - Some types of greedy
  - Tree/graph traversal
  - Stack/Queue
  - Typically for n ≤ 10⁶
- The following examples are both O(N):

```python
for i in range(1, N + 1):
  # constant time code

i = 0
while i < N:
  # constant time code
  i += 1
```

```python
for i in range(1, 5 * N + 17):
  # constant time code

for i in range(1, N + 538238):
  # constant time code
```

## O(K log(n))

- Heap push/pop K times. 
- When you encounter problems that seek the "top K elements", you can often solve them by pushing and popping to a heap K times, resulting in an O(K log(N)) runtime. e.g., K closest points, merge K sorted lists.
- Binary search K times.
- Typically for n ≤ 10⁶

## O(n log n)

- Sorting. 
- The default sorting algorithm's expected runtime in all mainstream languages is N log(N). 
- For example, java uses a variant of merge sort for object sorting and a variant of Quick Sort for primitive type sorting.
- Divide and conquer with a linear time merge operation. 
- Divide is normally log(N), and if merge is O(N) then the overall runtime is O(N log(N)). 
- An example problem is smaller numbers to the right.
- Typically for n ≤ 10⁶

```python
N = int(input())
ar = []
for i in range(N):
  m = int(input())
  ar.append(m)
ar.sort() # nlogn
```

## O(n^2)

- Also called quadratic time.
  - Nested loops, e.g., visiting each matrix entry
  - Many brute force solutions
  - Typically for n ≤ 3000
- For small N < 1000, this is not that bad for modern computers. 
- You can probably pass most Leetcode tests with quadratic time for tiny Ns. 
- However, in an interview, your solution usually has to do better than quadratic time to impress the interviewer if there is a better solution.
- This example is O(N^2) because the outer loop runs O(N) iterations and the inner loop O(N) as well:

```python
for i in range(1, N + 1):
  for j in range(1, N + 1):
    # constant time code
```

- For this example, the outer loop runs O(N) iterations, and the inner loop runs anywhere between 1 and N iterations.
- Since Big O notation calculates worst-case time complexity, we treat the inner loop as a factor of N. Thus, this code is O(N^2).

```python
for a in range(1, N + 1):
  for j in range(a, N + 1):
    # constant time code
```

## O(2^n)

- Grows very rapidly. Often requires memoization to avoid repeated computations and reduce complexity.
  - Combinatorial problems, backtracking, e.g. subsets
  - Often involves recursion and is harder to analyze time complexity at first sight
  - Further detailed code examples can be found in the backtracking section
  - Typically for n ≤ 20
- A recursive Fibonacci algorithm is O(2^N) because for any Fib(i) where i > 1, we call Fib(i - 1) and Fib(i - 2).

```python
def Fib(n):
  if n == 0 or n == 1:
    return 1
  return Fib(n - 1) + Fib(n - 2)
```

## O(n!)

- Grows insanely rapidly. Only solvable by computers for small N. Often requires memoization to avoid repeated computations and reduce complexity.
  - Combinatorial problems, backtracking, e.g. permutations
  - Often involves recursion and is harder to analyze time complexity at first sight
  - Detailed code examples can be found in the backtracking section
  - Typically for n ≤ 12

## Amortized Time Complexity

- The idea of amortized time is doing a very costly task once in a while. 
- The costly task is done so rarely that it is dilluted away. 
- For example, if we had N O(1) tasks but only a single O(N) task, we could still consider the total O(N) instead of O(N^2) if N is large enough.

- The key takeaway is that amortized time is the average time taken per operation.

- The following is an implementation of an O(1) append function for a dynamically sized array:

```python
size = None # number of elements in array
capacity = None # maximum number of elements array can store
arr = []
...
def append(x):
  if size == capacity:
    new_arr = [None] * (2 * capacity)
    capacity *= 2
    for i in range(size):
      new_arr[i] = arr[i]
    arr = new_arr
  arr[size] = x
  size += 1
```

## Practice

### Question 1

#### **What is the asymptotic time bound of functions with these time complexities?

**3N + 2N + N**
- 