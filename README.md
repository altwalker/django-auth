# Django AUTH

Django web application with authentication flow.

Features 
 * Login
 * Create Account
 * Reset Password
 * Password
 * Logout


## Install dependencies {.tabset}


### Windows bash

```
python -m venv env
. env/Scripts/activate
pipenv install
```

### Windows cmd

```
python -m venv env
.\env\Scripts\activate.bat
pipenv install
```

### Linux

```
python -m venv env
source env/bin/activate
pipenv install
```

## Run web application

`python manage.py migrate`  - creates the sqlite database and applies migration scripts

`python manage.py runserver` - starts the webserver 
