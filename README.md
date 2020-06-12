# Django AUTH

Django web application with authentication flow.

Features 
 * Login
 * Create Account
 * Reset Password
 * Change Password
 * Logout


## Install dependencies

### Windows bash

```
python -m pip install pipenv
python -m venv env
. env/Scripts/activate
pipenv install
```

### Windows cmd

```
python -m pip install pipenv
python -m venv env
.\env\Scripts\activate.bat
pipenv install
```

### Linux

```
python -m pip install pipenv
python -m venv env
source env/bin/activate
pipenv install
```

## Run web application

### From source
`python manage.py migrate`  - creates the sqlite database and applies migration scripts

`python manage.py runserver` - starts the webserver 

### Docker

`docker build -t django-auth .`
`docker run --rm -it -p 8000:8000 django-auth`

## Load reset password emails

When resetting a password an email must be sent to the user with a reset password link. For testability we save the email contents in a file that can be accessed by automated software at `/testability/last-reset-pwd-email`