# Pewlett-Hackard-Analysis

## Overview: Explain the purpose
- To determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, writing an analysis of the results will help prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age. Sequel via PgAdmin was used to format and join tables neccesary for this analysis. 

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
- The majority of retiring titles have senior titles
  - ![retiring_titles.png](https://github.com/forrestcasey/Pewlett-Hackard-Analysis/blob/main/Schema/retiring_titles.png)
- The rest of the retiring titles include: Engineer, Staff, Technique Leader, Assistant Engineer, and Manager
- There are 90,398 retiring titles
- There are 1,549 mentorship-eligible employees
  - ![mentorship_eligibility.png](https://github.com/forrestcasey/Pewlett-Hackard-Analysis/blob/main/Schema/mentorship_eligibility.png)

## Summary:

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  - There are a total of 90,398 roles retiring that will need to be filled

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  - No, there are only 1,549 retirement-ready employees that are eligibile for mentorship. We need more to be eligible to fill this amount of retiring employees.

- The deliverable instructions have limited the query to just the birth date of the employees eligibile for mentorship, rather than relfect the years worked in addition, or even separately to, this analysis. Adding this additional filter, and the years hired, will add the amount of eligible employees for mentorship. Otherwise, that would be an incredible amount of pressure on the 1549 employees, limited by just their age, rather than experience. This would also make more sense logically, that age does not single-handedly define and correlate to someones experience within a company. 
![work_experience_vs_age.png](https://github.com/forrestcasey/Pewlett-Hackard-Analysis/blob/main/Schema/work_experience_vs_age.png)


