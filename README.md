# Pewlett-Hackard-Analysis

## Overview of Analysis
Through the 7th module in the data analytics course, we were tasked with building SQL tables and quiries with pgAdmin.  With our base dataset, we were tasked with determining the number of retiring employees per title, and identifying employees who were eligible to participate in a mentorship program. 

## Results

![ChallengeStep11](https://user-images.githubusercontent.com/88443672/146458098-53ef4f1c-89d3-45ff-85e3-743a74ae3b66.png)

  ### Deliverable 1, step 11 is a bit misleading .......
  
- In order to achieve the totals that the module picture indicates as accurate, we need to skip step 11 in deliverable 1 of the challenge.  Following the instructions and filtering to the to-dates equal to '9999-01-01', we find that there are 25,916 Senior Engineers that fall within the filters used to identify employess with retirement likely in the near future.  We have to exclude the "to-date" filter to get the result of 29,414 Senior Engineers that the picture in the challenge indicates as the correct result.
![selectcount](https://user-images.githubusercontent.com/88443672/146459008-417f9219-0a2d-411f-9b7b-3aa5de821d34.png)![SelectCountModule](https://user-images.githubusercontent.com/88443672/146459014-41a91bd5-7e75-407c-8735-a6927f890e59.png)

- In the results that the directions lead too, there are 72,458 employees that fall within the search parameters, versus the 90,398 that the module pictures as correct, by which you have to skip step 11.

- There are 1,547 employees that are identified as mentorship-eligible.

- Regardless of using step 11 or not, the results in both instances show ~50% of the employees identified as nearing retirement as an Engineer of some form.
  
## Summary
** I would recommend adding the following 4 queries to analyze the percentage of employees that fall into the "nearing retirement" pool by their title. 

![D31](https://user-images.githubusercontent.com/88443672/146578318-907ea599-1f6d-459c-adaf-7aa588d0a45e.png)

![D32](https://user-images.githubusercontent.com/88443672/146578333-9b434675-67e6-46ad-9938-759cac1bb5f4.png)![D33](https://user-images.githubusercontent.com/88443672/146578344-92f277f1-0a36-4d68-ae49-e048cf86559a.png)

How many roles will need to be filled as the "silver tsunami" begins to make an impact?
There are 33,118 employees that have birth years between 1952 and 1955 (13.79% of the current employee pool).  

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
With only 1,547 mentorship eligible employees, it feels like a tall task given the 20/1 ratio of employees with birth years between 1952 and 1955 versus mentorship eligible employees.

- 15.88% of all "Senior Engineers" fall into the 1952-1955 range
- 15.69% of all "Senior Staff" fall into the 1952-1955 range
- 8.75% of all "Engineers" fall into the 1952-1955 range
- 7.92% of all "Staff" fall into the 1952-1955 range
- 13.35% of all "Technique Leaders" fall into the 1952-1955 range
- 22.22% of all "Managers" fall into the 1952-1955 range

