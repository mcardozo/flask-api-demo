# Flask API

Api de prueba :rocket:

## Instalación

- Instalar las librerías requeridas:

        (venv)$ pip install -r requirements.txt

- Correr aplicación:

        (venv)$ export FLASK_APP=main.py

        (venv)$ flask run

## Docker

- Generar imagen:

        $ docker build -t <name>:<tag> .

- Ejecutar imagen para generar un contenedor:

        $ docker run --rm -p 5000:5000 -v $PWD/data:/usr/src/app/data -it <name>/<tag>
