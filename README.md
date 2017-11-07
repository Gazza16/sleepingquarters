# Overview
  * Project Requirements
  * Application Brief
  * WireFraming and Workflow diagram
  * User Stories
  * Entity relationship diagram
  * configuration steps
  * Whats needs improvement

  ##### Quick housekeeping #####
  Rails 5.1.4 app running ruby 2.4.1 with version 10.0 postrgresql database. Read on for further information about configuration
____
### 1) Project Requirements ###
  So this application was built as part of our assessment at [CoderAcademy](https://coderacademy.edu.au/) In this we had 2 weeks to build a double sided marketplace, with the following functionality.
  * Create your application using Ruby on Rails.
    - [x] Done
  * Demonstrate knowledge of Rails conventions.
    - [x] Done
  * Use postgresql database in development.
    [checkbox:checked] Done
  * Use an API (eg. Omniauth, Geocoding, Maps, other..).
    [checkbox:checked] Done (googlemaps, Sendgrid, Amazon, Stripe)
  * Use appropriate gems.
    [checkbox:checked] Done Checkout gemfile
  * Use environmental variables to protect API keys etc. (dotenv)
    [checkbox:checked] Done dotenv
  * Implement a payment system for your product. (e.g. Stripe)
    [checkbox:checked] Done Stripe
  * Your app must send transactional emails (eg. using Mailgun).
    [checkbox:checked] Done used Sendgrid
  * Your app should have an internal user messaging system.
    [checkbox:checked] Done
  * Your app will have some type of searching, sorting and/or filtering capability.
    [checkbox:checked] Done
  * Your app will have some type of file uploading capability (eg. images).
    [checkbox:checked] Done (paperclip and AWS S3 Bucket)
  * Your app will have authentication (eg. Devise, must have full functionality in place).
    [checkbox:checked] Done (devise and mailer  validation mail setup and used cancan for role)
  * Your app will have authorisation (users have restrictions on what they can see and edit).
    [checkbox:checked] Done (users can only edit and delete their boats/bookings used cancan gem)
  * Your app will have an admin dashboard for the admin user to administrate the site.
    [checkbox:checked] Done (active admin gem)
  * Document your application with a README that explains how to setup, configure and use your application.
    [checkbox:checked] Done
  * Application needs to be deployed to heroku/AWS.
    [checkbox:checked] Done (heroku)
____
### 2) Application Brief ###  
Boats are really fun but not everyone can afford or want to own a boat outright, meanwhile many boats are left
parked up in sheds or moored for costly fees, What sleeping 1/4's aims to do is have them boats become available to interested
users this way the boat gets used, people can have affordable holidays and the boat owners can make a tidy profit while contributing their under-utilised assets.
___
### 3) WireFraming and Workflow Diagram ###
Balsamiq was used for wireframing as I have used it on previous projects,
 You can find the folder project documentation in the repo.
___
### 4) User Stories ###
* Boat users
  * Want a page that will display the  relevant information of a boat
  * Be able to directly message a boat owner to ask questions about boat
  * I want to see maps of where I can use the boat
  * I want to have secure payment
  * I want to see reviews of boats and owners
  * I would like to see when boats are available
* Boat owners
  * Want to have a for that lets me put in all the relevant details of my boat
  * I want to be able to list multiple boats
  * I want to be able to communicate with users without exchanging my personal information till they have confirmed.
  * see reviews on Boat users to ensure that boat will be looked after
  * Place boundaries for which waterways my boat/s are to used in.
* Administrator
  * Confirm that signups are real people for following a validation process
  * Have full crud functionality over all boats bookings and users
  * Have a search function in my admin console to be able to find what I want....
___
### 5) Entity Relationship Diagram ###
  We used an ERD to better display the relationships in our database, and what columns it contains this can also be found in project documentation folder. The ERD was drawn by using Lucid Chart
  Quick examples though:
  A user can have zero or many boats
  Boats can have zero or many bookings
  Boat has one BoatOwner
___
### 6) Configuration steps
  * Clone the repo
  * Set up a dot env file and set all these up
    * S3_BUCKET_NAME=yourS3BucketName(will need t be done as photos are hosted in development)
    AWS_ACCESS_KEY_ID=YourAWSAccessKEy
    AWS_SECRET_ACCESS_KEY=YourAwsSecretAccess_key
    AWS_REGION=AwsRegion
    MAIL_HOST=localhost:3000
    SENDMAIL_USERNAME=your sendMailUserName
    SENDMAIL_PASSWORD=SendmailPassword
    SENDGRID_API=SendGridApi
    SENDGRID_API_NAME=SendGridName
    STRIPE_PUBLISHABLE_KEY=YourStripePublishableKey
    STRIPE_SECRET_KEY=YourStripeSecretKey
    links for [sendgrid](https://app.sendgrid.com), [Stripe](https://dashboard.stripe.com), and [Amazon](https://signin.aws.amazon.com).

Sendgrid Username  and password is acquired by asking heroku for it run in terminal

'''bash
$ heroku addons:create sendgrid:starter
'''
Get your credentials
'''bash
$ heroku config:get SENDGRID_USERNAME
'''
The value returned is your SENDGRID_USERNAME place this as the value for SENDGRID_USERNAME in dot env file.
The next step is to get the SENDGRID_PASSWORD run in terminal
'''bash
$ heroku config:get SENDGRID_PASSWORD
'''
again the value returned is treated the same as the SENDGRID_PASSWORD
once you have set up all these variables you should perform in terminal
'''bash
rails db:create
'''
'''bash
rails db:migrate
'''
and then
'''bash
rails server
'''
To set up an admin user You will need to create a seeds.rb file in your Db folder and then put in code like this...
''' bash
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
'''
Then run in Terminal
'''bash
rails db:seed
'''
navigate to http://localhost:3000/admin
and login with the credentials provided in the seeds.rb file yay your an admin
      ___
### 7) What needs improvement ###
  First off this application will need to have rescues set up for various items so as to redirect to a url path rather than error out if an object no longer exists in the database. More work will need to put on the user experience, Set up stripe connect to automate the payment distrubution for the admin, A more robust internal messager that notifies the user when they get a message. More personalization for the user, in the views and emails. Add an ability to add boats to a booking ad add the costs of the boats to be the total price. running rubocop before committing changes and keeping the code quality manageable.

  If you have any questions I can be contacted [here](https://travis-anderson83.github.io/contact.html). Just fill out contact form Or head to my linked in and send a message.
