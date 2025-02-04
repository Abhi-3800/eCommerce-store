# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

In this project, I'll be creating an eCommerce store with an interactive UI and razorpay API integration for facilitating payments

# Things to do
- add devise (include address)
- scaffold products
- design the index and show page
- fix navbar links
- associations between user, product, line item and cart models
- sessions for cart_id
- buy now
- add to cart
- remove product from cart
- calculate sub_total

### Use Turbo Frames for above
using turbo frame to edit address on cart page
- users have their own address
- order model assocations with user
- checkout with Razorpay
- users can see their own orders
- admin can see all orders.