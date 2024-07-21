# How to run the project?

1. Install docker desktop (make sure docker compose is installed by typing `docker-compose` in CMD after installation)
2. Go to the main project (where docker-compose.yml file is) directory
3. Run `docker-compose up --build`

## Login as admin
Username: `admin`
Password: `securepassword`

Admin email is: Email: `admin@example.com`

By logging as admin you have access to `add_book` view and `control panel` which are available only for admins. If you register new user, this user doesn't have access to `add_book` view.

# First run 
During website setup database is seeded by some books so there is already some data to play with. 

## Tests 
Go to main directory in CMD where README.md file exists and type `python manage.py test --settings=booksmanager.test_settings`.

## Control panel
There is control panel to monitor users and service itself. You need to go add `/admin`to url and you're redirected to admin page. Please bear in mind you need to use admin username and password. 

## Suggestions 
Some suggested book will appear when you start reading some book. Books are suggested based on book's genre. 