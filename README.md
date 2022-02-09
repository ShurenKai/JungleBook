## Getting started

## Functional Requirements

### Feature: Sold Out Badge

- [x]When a product has 0 quantity, a sold out badge should be displayed on the product list page

### Feature: Admin Categories

- [x]Admin users can list and create new categories
- [x]Admins can add new products using the new category
- [x]Restful routes (resources) used, and no extra unused routes exposed

### Feature: User Authentication

- [x]Get to the registration page from any page in order to create an account
- [x]Sign up for a user account with e-mail, password, first name and last name
- [x]Sign in using e-mail and password
- [x]Log out from any page
- [x]Sign up with an existing e-mail address (uniqueness validation)
- [x]Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem

#### Enhancement: Order Details Page

- [x]The order page contains items, their image, name, description, quantities and line item totals
- [x]The final amount for the order is displayed
- [x]The email that was used to place the order is displayed
- [x]Place an order (i.e. without logging in and therefore without an e-mail address). The original functionality from the inherited code (even though it is not realistic) should therefore not be suppressed.
- [x]User must enter HTTP auth login/password to access admin functionality
- [x]Should ideally be implemented in an abstract top-level class for admin controllers (e.g., Admin::BaseController which the other concrete admin controllers inherit)
  Bug: Checking Out with Empty Cart
- [x]When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty and link to the home page
