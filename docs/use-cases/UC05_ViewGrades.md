# Use Case: View Grades (UC05)

**Author:** [Your Name]  
**Date:** 2025-10-14  
**Actors:** Student, Instructor (optional: Admin)  
**Related Issue:** #YY

## Goal
Allow a student to view their grades for assessments and courses; allow an instructor to view and manage grade entries.

---

## Preconditions
- User (student or instructor) is logged in.
- The user has permission to view the requested grades (student sees own grades; instructor sees students' grades for their courses).
- Grades have been entered into the system by instructors or imported from gradebook.

## Postconditions
- The requested grade information is displayed to the user.
- If an instructor updates grades, the system persists changes and notifies affected students (if required).

## Main Success Scenario (Student view)
1. Student navigates to the **Grades** or **Course → Grades** section.
2. Student selects a course or assessment filter (optional).
3. System retrieves the student’s grade records for the selected scope.
4. System displays grades, assessment names, dates, and any feedback/comments.
5. Student views details (clicks an assessment) to see feedback or rubric if available.

## Main Success Scenario (Instructor view / optional)
1. Instructor navigates to course gradebook.
2. Instructor selects a student or assessment.
3. System displays grades and allows editing (if permitted).
4. Instructor edits a grade and saves changes.
5. System records the change (audit log) and optionally notifies the student.

## Alternate Flows / Exceptions
- 3a: No grades exist yet for the selected course → System displays “No grades available” and guidance.
- 4a: Student lacks permission (trying to view another student’s grades) → System denies access and shows an authorization error.
- Instructor saves an invalid grade value (out of allowed range) → System rejects the update and shows validation error.

## Acceptance Criteria (testable)
- AC1: Given a logged-in student, when they open Grades, then the system shows their current grades and any instructor feedback.
- AC2: Given an instructor with permission, when they update a grade within allowed range, then the change is saved and visible to the student.
- AC3: Given unauthorized access attempt, when a user requests another student’s grades, then access is denied and an appropriate message is shown.
