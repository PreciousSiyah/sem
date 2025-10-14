# Use Case: Submit Assignment (UC04)

**Author:** [Your Name]  
**Date:** 2025-10-14  
**Actors:** Student  
**Related Issue:** #XX

## Goal
Allow a student to upload and submit an assignment for a specific course and assessment.

---

## Preconditions
- Student is logged in.
- The assignment submission window is open (submission period active).
- Student has a file prepared that meets allowed formats/size limits.

## Postconditions
- The submission is stored in the system and associated with the student, course and assessment.
- The student receives a confirmation of successful submission (and optionally a submission ID or timestamp).

## Main Success Scenario
1. Student navigates to the course page and opens the assignment submission page.
2. Student selects the assignment to submit (if multiple) or confirms the active assignment.
3. Student clicks **Choose file** and selects the file to upload.
4. Student optionally adds comments or supplementary information.
5. Student clicks **Submit**.
6. System validates file type, size and that the submission window is still open.
7. System stores the uploaded file, records metadata (timestamp, student ID, file name) and marks the assignment as submitted.
8. System displays a confirmation message and sends an optional confirmation email (or displays submission ID/timestamp).

## Alternate Flows / Exceptions
- 3a: File exceeds allowed size or unsupported format → System displays an error and returns to step 3.
- 6a: Submission window has closed → System rejects submission and shows “Submission period closed.”
- 6b: Student has already submitted and multiple submissions are disallowed → System shows “Submission already received” and provides view-only access.
- Network/server error during upload → System displays “Upload failed — try again” and does not save partial data.

## Acceptance Criteria (testable)
- AC1: Given a logged-in student with a valid file, when they submit, then the file is saved and a confirmation is shown.
- AC2: Given an invalid file (type/size), when the student attempts upload, then the system shows a descriptive error and does not save the file.
- AC3: Given the submission window closed, when the student attempts to submit, then the system rejects the submission with an appropriate message.
