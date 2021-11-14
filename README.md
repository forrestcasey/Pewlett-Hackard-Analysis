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

- The deliverable instructions have limited the query to just the birth date of the employees eligibile for mentorship, rather than reflect the years worked in addition, or even separately to, this analysis. Adding this additional filter, and the years hired, will add the amount of eligible employees for mentorship. Otherwise, that would be an incredible amount of pressure on the 1549 employees, limited by just their age, rather than experience. This would also make more sense logically, that age does not single-handedly define and correlate to someones experience within a company. This number is brought up to 18,912. Refer to code image below. I ran the query to include only those who have worked for the ompany less than the year 1990, since the latest to_date is 2000. This indicates that we can put more trust inthose that have worked in the ocmpany for 10 years. This number could be added to the query of retiring employees, making a larger pool of those able to train in new hires, unrestricted by age, but instead their time within a company. It is however, restricted by title, as you can see it is only senior enginner, senior staff, and technique leader, and 1 manager and 1 staff here. But, this is just an example of how better to filter and find mentorship eligible candidates that would be large enough of a pool to mentor new hires in such a large company of employees that are leaving as well as these positions needing to be filled. 
- But, I do understand why they have decided to trade in the retirement ready employees to be the mentors here, so that they can transition out of the company without costing time for others, i.e., so that the current employees don't have to be the ones to train in new hires. But the world is never ideal, and there may need to be a balance in some current employees shifting some of their time on current projects towards training in new hires, if enough mentors cannot be found that are retiring. More tables with these new parameters in mind, could help to find a balance of pressure on the mentors count. It will be important to map out a good random ratio of retirement ready employees as mentors with current employees. Or decide on more employees to be mentors from the slection of those that are retiring by rearranging the from and to dates, as well as possbily birth dates.

#### Shows table of employees who are currently at the company, including some of those about to retire, who can train in new hires based on their ten years of experience
![ten_years_worked.png](https://github.com/forrestcasey/Pewlett-Hackard-Analysis/blob/main/Schema/ten_years_worked.png)


