# Django AUTH

Django web application with authentication flow.

The application is built as a demo to showcase how to write tests in python and execute them with [AltWalker](https://altwalker.github.io/altwalker/).

Features:

 * Login
 * Create Account
 * Reset Password
 * Change Password
 * Logout

## Run Django AUTH from code

Windows bash:

```sh
git clone https://github.com/altwalker/django-auth.git
cd django-auth

python -m pip install pipenv
python -m venv env
. env/Scripts/activate
pipenv install

python manage.py migrate
python manage.py runserver
```

Windows cmd:

```bat
git clone https://github.com/altwalker/django-auth.git
cd django-auth

python -m pip install pipenv
python -m venv env
.\env\Scripts\activate.bat
pipenv install

python manage.py migrate
python manage.py runserver
```

Unix/MacOS:

```sh
git clone https://github.com/altwalker/django-auth.git
cd django-auth

python -m pip install pipenv
python -m venv env
source env/bin/activate
pipenv install

python manage.py migrate
python manage.py runserver
```

## Build and run as a docker image

```
$ docker build -t django-auth .
$ docker run --rm -it -p 8000:8000 django-auth
```

## Load reset password emails

When resetting a password an email must be sent to the user with a reset password link. For testability we save the email contents in a file that can be accessed by automated software at `/testability/last-reset-pwd-email`

## Useful links

To run the tests against this app, clone the tests repo from https://github.com/altwalker/altwalker-examples and follow the installation steps for `python-auth` example.

We've published an image on docker hub with this codebase: https://hub.docker.com/r/altwalker/demos

## License

This project is licensed under the [MIT License](LICENSE).
