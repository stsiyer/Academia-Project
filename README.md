# Academic ERP System

## Introduction
This Academic ERP system is designed to manage various aspects of a university's academic and administrative processes. The system includes modules for student management, course management, faculty management, human resources, accounts, hostel management, and alumni & placement.

## 1. Student
### 1.1 Student Admission
- Capture student details, including a photograph (not saved as a blob) and domain selection.
- Assign a unique roll number based on a specified pattern.

### 1.2 Student Details Modify
- Modify student details, including roll number, photograph, and domain.
- Update all referenced tables accordingly.

### 1.3 Student Course Selection
- Display a list of courses with professors and prerequisites.
- Allow a student to select 4 to 6 courses, ensuring prerequisite constraints.

### 1.4 Student TimeTable
- Display the timetable based on selected courses.
- Include course details, faculty, room number, and specialization.

## 2. Course
### 2.1 Course Specialisation CRUD
- Allow admin employees to manage course specializations (create, read, update, delete).
- Display courses under each specialization.

### 2.2 Course Creation
- Allow admin employees to create courses with details like credits, capacity, schedule, specialization, and prerequisites.

### 2.3 Course Update/Delete
- Allow admin employees to update/delete courses.
- Ensure cascading updates for prerequisite changes.

### 2.4 Course TA Registration
- Allow faculty to register students as TAs for specific courses.

### 2.5 Course TimeTable
- Display timetable for selected domain.
- Include faculty and enrolled students for each course.

## 3. Faculty
### 3.1 Faculty Registration
- Capture faculty details, courses taught (avoiding time slot conflicts), and assign a unique employee ID.

### 3.2 Faculty Details Modify
- Modify faculty details, including employee ID, photograph, and courses taught.

### 3.3 Faculty Grade Students
- Allow faculty to grade students in assigned courses.

### 3.4 Faculty Display TimeTable
- Display timetable for all courses and students taught by a faculty member.

### 3.5 Faculty View Salary History
- Display salary history and allow download of salary slips.

## 4. Human Resources
### 4.1 Department CRUD
- Manage departments (create, read, update, delete) with capacity and employee listings.

### 4.2 Employee CRUD
- Capture employee details, assign a unique employee ID, and manage modifications.

### 4.3 Employee View Salary History
- Allow employees to view salary history and download salary slips.

### 4.4 Employee Disburse Salary
- Allow accounts employees to modify and disburse salaries.

## 5. Admin
### 5.1 Student Domain CRUD
- Manage student domains with capacity and qualification requirements.

### 5.2 Compute Student Specialisation
- View student specialisations based on credit criteria.

## 6. Accounts
### 6.1 Student Fee Payment
- Allow students to view and pay bills in multiple installments.

### 6.2 CRUD Fee Details
- Allow accounts employees to manage fee details for students and domains.

### 6.3 Student View Bill History
- Allow students to view due and paid bills, download fee receipts.

### 6.4 Faculty Disburse Salary
- Allow accounts employees to modify and disburse faculty salaries.

## 7. Hostel
### 7.1 Student Hostel Room Allocation
- Allow estate employees to manage room allocations.

### 7.2 Student Room Swapping Application Portal
- Allow students to request and accept/reject room swaps.

## 8. Alumni & Placement
### 8.1 Organisation Registration
- Allow outreach employees to register and manage organizations.

### 8.2 Alumni Registration
- Allow alumni registration and update details.

### 8.3 Alumni Details Update
- Allow alumni to update their details.

### 8.4 Placement Add Offer
- Allow outreach employees to create placement offers.

### 8.5 Placement Student Application
- Allow students to view and apply for placement offers.

### 8.6 Placement Student Selection
- Allow outreach employees to select students for placement offers.

### 8.7 Placement History
- Allow outreach employees to view placement history.

## Conclusion
This comprehensive Academic ERP system aims to streamline various university processes, enhancing efficiency and organization.
