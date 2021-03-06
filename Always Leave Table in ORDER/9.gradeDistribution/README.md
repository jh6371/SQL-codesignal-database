At the end of every semester your professor for "Introduction to Databases" saves the exam results of every student in a simple database system. In the database table Grades, there are five columns:

Name: the name of the student;
ID: the student's ID number (a 5 byte positive integer);
Midterm1: the result of the first midterm out of 100 points;
Midterm2: the result of the second midterm out of 100 points;
Final: the result of the final exam, this time out of a possible 200 points.
According to school policy, there are three possible ways to evaluate a grade:

Option 1:
Midterm 1: 25% of the grade
Midterm 2: 25% of the grade
Final exam: 50% of the grade
Option 2:
Midterm 1: 50% of the grade
Midterm 2: 50% of the grade
Option 3:
Final exam: 100% of the grade.
Each student's final grade comes from the option that works the best for that student.

As a Teaching Assistant (TA), you need to query the name and id of all the students whose best grade comes from Option 3, sorted based on the first 3 characters of their name. If the first 3 characters of two names are the same, then the student with the lower ID value comes first.

Example

For the following table Grades

| Name     | ID    | Midterm1 | Midterm2 | Final |
|----------|-------|----------|----------|-------|
| David    | 42334 | 34       | 54       | 124   |
| Anthony  | 54528 | 100      | 10       | 50    |
| Jonathan | 58754 | 49       | 58       | 121   |
| Jonty    | 11000 | 25       | 30       | 180   |

Output should be:

| Name     | ID    |
|----------|-------|
| David    | 42334 |
| Jonty    | 11000 |
| Jonathan | 58754 |

For David, Jonty and Jonathan, the best option is number 3. But Anthony's best option is the second one, because Option1 = 25% of 100 + 25% of 10 +50% of 50 = 52.5, Option2 = 50% of 100 + 50% of 10 = 55, Option3 = 100% of 50 = 50.


# My Analysis: 
1. whose best grade comes from Option 3: means option 3 > option2 or option3 > option1;
option1=midterm1 / 4 + midterm2 / 4 + final / 2  
option2=midterm1 / 2 + midterm2 / 2  
option3=final  

so its' final > midterm1 / 4 + midterm2 / 4 + final / 2  or final > midterm1 / 2 + midterm2 / 2  

2.sorted based on the first 3 characters of their name. If the first 3 characters of two names are the same, then the student with the lower ID value comes first.  
ORDER BY substr(Name,1,3),ID;
extract name from 1st character to 3rd then order names, if their name's first 3 characters are the same, order by id.

3. Also, be aware of the result table's column name, it should be Nmae, ID, not name id.
