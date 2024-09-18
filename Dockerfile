FROM python:3.12.6-slim-bullseye

WORKDIR /app

RUN pip install pipenv

# Copier les fichiers Pipfile et Pipfile.lock
COPY Pipfile Pipfile.lock /app/

# Installer les dépendances à partir de Pipfile.lock
RUN pipenv install --deploy --ignore-pipfile

# Copier le reste de l'application
COPY . .

EXPOSE 8000

CMD ["pipenv","run", "python", "manage.py", "runserver", "0.0.0.0:8000"]