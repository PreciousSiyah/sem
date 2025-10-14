# Use Case: View Dashboard (UC03)

**Author:** [Your Name]  
**Date:** 2025-10-14  
**Actors:** Logged-in User  
**Goal:** Allow a logged-in user to view their dashboard with current data.

---

## Preconditions
- User is logged in.
- System has data to display.

## Postconditions
- Dashboard is displayed with the user’s personalized information.

## Main Flow
1. User logs in successfully.
2. User is redirected to the dashboard.
3. System retrieves user data from the database.
4. System displays the data (e.g., assignments, grades, or profile).

## Alternate Flows
- Data not found → Show “No data available.”
- Server error → Show “Error loading dashboard.”

## Acceptance Criteria
- AC1: Dashboard loads correctly after login.
- AC2: User-specific data is displayed.
