# Use Case: Register (UC02)

**Author:** [Your Name]  
**Date:** 2025-10-14  
**Actors:** New User  
**Goal:** Allow a new user to create an account in the system.

---

## Preconditions
- User has access to the registration page.
- System is online.

## Postconditions
- A new user account is created and stored in the database.

## Main Flow
1. User opens the registration page.
2. User fills in name, email, and password.
3. User submits the form.
4. System validates the input.
5. System creates the account.
6. System shows a confirmation message or redirects to login.

## Alternate Flows
- Missing required fields → Show error message.
- Email already registered → Show “Email in use” message.

## Acceptance Criteria
- AC1: Valid form → Account successfully created.
- AC2: Duplicate email → Error message displayed.
