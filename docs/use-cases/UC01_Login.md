# Use Case: Login (UC01)

**Author:** [Your Name]  
**Date:** 2025-10-14  
**Actors:** Registered User  
**Goal:** Allow a registered user to sign in and reach their dashboard.

---

## Preconditions
- User has an existing account.
- The login page is accessible.

## Postconditions
- User is authenticated and redirected to the dashboard.

## Main Flow
1. User opens the login page.
2. User enters valid credentials.
3. System verifies the credentials.
4. System shows the user’s dashboard.

## Alternate Flows
- Invalid credentials → Show error message.
- Account locked → Show “Account locked” message.

## Acceptance Criteria
- AC1: Valid credentials → Login successful.
- AC2: Invalid credentials → Error shown.
