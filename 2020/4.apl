⍝ Write a function that, given a right argument which is an integer array of year numbers greater than or equal to 1752 and less than 4000, returns a result of the same shape as the right argument where 1 indicates that the corresponding year is a leap year (0 otherwise).
      400 100 4|2000
0 0 0
      400 100 4|1900
300 0 0
      400 100 4|1904
304 4 0
      400 100 4|1905
305 5 1
      0=400 100 4|1905
0 0 0
      ≠/0=400 100 4|1905
0
      ≠/0=400 100 4|1904
1
      ≠/0=400 100 4|1900
0
      ≠/0=400 100 4|2000
1
      400 100 4∘.|  2 2⍴1900 1904 1905 2000
300 304
305   0
       
  0   4
  5   0
       
  0   0
  1   0
      ≠⌿400 100 4∘.|  2 2⍴1900 1904 1905 2000
1 1
1 0
      ≠⌿0=400 100 4∘.|  2 2⍴1900 1904 1905 2000
0 1
0 1
      (≠⌿0=400 100 4∘.|⊢)  2 2⍴1900 1904 1905 2000
0 1
0 1
      (0≠.=400 100 4∘.|⊢)  2 2⍴1900 1904 1905 2000
0 1
0 1
      ¯1 0 ⎕DT⊂1900 30 100
0
      ¯1 0 ⎕DT⊂1900 1 1
1
      ¯1 0 ⎕DT⊂1900 2 29
0
      ¯1 0 ⎕DT⊂1904 2 29
1
      (,∘2 29¨) 2 2⍴1900 1904 1905 2000
 1900 2 29  1904 2 29 
 1905 2 29  2000 2 29 
      (¯1 0 ⎕DT,∘2 29¨) 2 2⍴1900 1904 1905 2000
0 1
0 1
      (¯1 0 ⎕DT,∘2 29¨) 1900
0
