## Getting started

### Setup

1. Run bundle install to install dependencies
2. Create config/database.yml by copying config/database.example.yml
3. Create config/secrets.yml by copying config/secrets.example.yml
4. Run bin/rake db:reset to create, load and seed db
5. Create .env file based on .env.example
6. Run bin/rails s -b 0.0.0.0 to start the server

After you're done with setup, you can proceed to visit the website page

### Welcome to my Jungle store :D

![Homepage](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/home_page.png)
Where you can buy all of these items! Or none, whatever works for you! Although, if you buy nothing, you'll see an empty cart message but I digress.

Additionally, if an item is sold out, it will tell you as shown below.

![sold out](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/sold_out.png)

If you sign up for an account - you'll be asked for your first and last name, email, and password! After you sign up once, you don't have to do it again so don't worry

If you need to come back and find that you're no longer logged in, you can re-click login to re-sign in!

![login](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/login_form.png)

A registered user may see their top nav bar a little differently than usual, as they no longer have the login or signup buttons - currently this shows horizontally the user's first name and a logout button. If you logout, you will be redirected back to the login page.

![logged in](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/logged_in.png)

If you're an admin, on the otherhand, it allows you to use the admin drop down bar.

![dashboard](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/dashboard.png)

On this categories list, you can also create a new category by inputting a name.

![categories](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/category_list.png)

For instance, I can create a category called destruction.

![add destruction](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/destruction_add.png)

However, it will not auto generate for me some new products to go in there.

![0 items in destruction](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/destruction0.png)

Admins can also view and manage all of their products, but they can also create them as well! So we can add a new item to our destruction category.

![new product button](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/new_product.png)
![new product form](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/new_product_form.png)

Behold the Cat of destruction!

![kitten of destruction](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/cat_product.png)

After we created the new product, it will appear next time we go into the category of destruction.
![1 item in destruction](https://github.com/ShurenKai/JungleBook/blob/master/hub-img/destruction1.png)

## Functional Requirements

### Feature: Sold Out Badge

- [x] When a product has 0 quantity, a sold out badge should be displayed on the product list page

### Feature: Admin Categories

- [x] Admin users can list and create new categories
- [x] Admins can add new products using the new category
- [x] Restful routes (resources) used, and no extra unused routes exposed

### Feature: User Authentication

- [x] Get to the registration page from any page in order to create an account
- [x] Sign up for a user account with e-mail, password, first name and last name
- [x] Sign in using e-mail and password
- [x] Log out from any page
- [x] Sign up with an existing e-mail address (uniqueness validation)
- [x] Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem

#### Enhancement: Order Details Page

- [x] The order page contains items, their image, name, description, quantities and line item totals
- [x] The final amount for the order is displayed
- [x] The email that was used to place the order is displayed
- [x] Place an order (i.e. without logging in and therefore without an e-mail address). The original functionality from the inherited code (even though it is not realistic) should therefore not be suppressed.
- [x] User must enter HTTP auth login/password to access admin functionality
- [x] When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty and link to the home page
