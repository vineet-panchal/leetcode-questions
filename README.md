# leetcode-questions

## Steps to Solve Leetcode Questions

### 1. Simplify The Problem

- the first step is to simplify the problem
- most leetcode questions have lots of fluff, that's hiding what actually matters
- when really, all leetcode questions are the same in nature
  - ***you are given inputs, and you need to change them into the expected outputs***

<br />

- after reading the question you should be able to read the problem to yourself or outload to the interviewer, in the following structure

***The inputs are these. We do these to the inputs, and finally we get this as the outputs.***

- if you are struggling to find out what happens to the inputs to become the outputs, manually walk through a test case

- in a real interview, ask a lot of questions, you are given bonus questions for asking clarifying questions

***make sure you catch the edge cases***

- these are cases where there is a unique or unclear way of handling, and interviews expect you to catch these

<br />

### 2. Pattern Recognition

- Now, that we know what we are solving, let's figure out how to solve it.

- Leetcode is really just pattern recognition
- Most leetcode problems can be solved using the same data structures and algorithms, all you need to do is figure out which should be used for a given problem.

<br />

#### Step 1: Straightforward Solution

- walk your way through the most obvious answer, even if its not efficient

- identify what the time and space complexities would be, you will often see spaces that can be simplified and often see better solutions

<br />

#### Step 2: Optimal Solution

- find the data structure and algorithm to solve this problem.

- check if the problem provides any constraints, this often gives away what you should be using

- if there are no obvious hints in the problem, you will need to use the context of the problem to figure out a pattern

<br />

### 3. Implementation Step

- at this point, we have recognized what pattern to use.
- all you need to do is put this pattern into action for this question
- this is where practicing various patterns becomes useful
- come up with the implementation using pseudocode

<br />

### 4. Coding Time

- code the implementation plan

<br />

### 5. Debug Time

- "My code ran perfectly and every tested passed" - said no programmer ever.
- there are two types of errors: 

<br />

### Syntax Error
- your code doesn't even run, which is easily fixable just read the error log and make the change

<br />

### Implementation Error
- if your code runs, but tests fail, its an implementation error.
- check how many tests are actually failing
- if it is only one or two, it might just be the edge cases
- if multiple tests are failing, then you made a mistake with your implementation

- to fix this manually walk the test case through your code, line by line
- try adding print or logging statements and see what the inputs/outputs are at that line
- this can show you exactly what is wrong, now all you need to do is figure out why its not working as you were expecting

