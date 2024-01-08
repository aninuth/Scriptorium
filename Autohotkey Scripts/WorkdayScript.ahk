#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Note: When including percentages, make sure to use a backtick (`) before the % so it is treated as a plaintext character
; Note: When modifying this template, be sure to remove the '<' and '>' when adding in your contents
; Note: Feel free to add/remove as many items as you need, but pay attention to the end of each section as the keyboard navigation changes slightly.





::<shortcut to trigger the script>::
JobOne = 
(
<Job Title 1>{Tab}<Employer 1>{Tab}<Employer 1 Location (City, ST)>{Tab}{Tab}<Job 1 start date (MMYYYY)>{Tab}{Tab}<Job 1 end date (MMYYYY)>{Tab}{Tab}
Bullet Point 1
Bullet Point 2 
Bullet Point 3{Tab}{Enter}
)
JobTwo = 
(
<Job Title 2>{Tab}<Employer 2>{Tab}<Employer 2 Location (City, ST)>{Tab}{Tab}<Job 2 start date (MMYYYY)>{Tab}{Tab}<Job 2 end date (MMYYYY)>{Tab}{Tab}
Bullet Point 1
Bullet Point 2
Bullet Point 3{Tab}{Enter}
)
JobThree=
(
<Job Title 3>{Tab}<Employer 3>{Tab}<Employer 3 Location (City, ST)>{Tab}{Tab}<Job 3 start date (MMYYYY)>{Tab}{Tab}<Job 3 end date (MMYYYY)>{Tab}{Tab}
Bullet Point 1
Bullet Point 2
Bullet Point 3{Tab}{Enter}
)
JobFour=
(
<Job Title 4>{Tab}<Employer 4>{Tab}<Employer 4 Location (City, ST)>{Tab}{Tab}<Job 4 start date (MMYYYY)>{Tab}{Tab}<Job 4 end date (MMYYYY)>{Tab}{Tab}
Bullet Point 1
Bullet Point 2
Bullet Point 3{Tab}{Enter}
)
JobFive=
(
<Job Title 5>{Tab}<Employer 5>{Tab}<Employer 5 Location (City, ST)>{Tab}{Tab}<Job 5 start date (MMYYYY)>{Tab}{Tab}<Job 5 end date (MMYYYY)>{Tab}{Tab}
Bullet Point 1
Bullet Point 2
Bullet Point 3{Tab}{Tab}
  
)
Edu = 
(
<Institution1>{Tab}<Degree 1 Type>{Tab}<Degree 1 Major>{Enter}{Tab}{Tab}<Degree 1 GPA>{Tab}<Degree 1 Start Year>{Tab}<Degree 1 End Year>{Tab}{Enter}<Institution 2>{Tab}<Degree 2 Type>{Tab}<Degree 2 Major>{Enter}{Tab}{Tab}<Degree 2 GPA>{Tab}<Degree 2 Start Year>{Tab}Degree 2 End Year{Tab}
)
SendInput, % JobOne
Sleep, 1500
SendInput, % JobTwo
Sleep, 1500
SendInput, % JobThree
Sleep, 1500
SendInput, % JobFour
Sleep, 1500
SendInput, % JobFive
Sleep, 1500
SendInput, % Edu


return
