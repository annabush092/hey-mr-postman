# Hey Mr. Postman Backend
An interactive, 3D display of your email inbox.

demo: https://youtu.be/BvQG8dyOTNs

frontend repo: https://github.com/annabush092/hey-mr-postman-frontend

Created with Rails and a Postgres database, seeded with the Faker gem


To run:

Ensure Postgres is installed and running.

bundle install

rake db:create

rake db:migrate

rake db:seed

rails s (be sure to start this server before starting the frontend server)

In order to view seeded Faker emails, you must obtain a username from your database.
Go to http://localhost:3000/api/v1/users/1 and copy paste the name of the user into the sign-in page of the front-end app to view this user's email inbox.
