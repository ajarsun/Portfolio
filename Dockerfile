# Usa la imagen de Python 3.9 como base
FROM python:3.9-slim-buster

# Establece el directorio de trabajo en /app
WORKDIR /main

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido de la aplicación Flask al contenedor
COPY . .

# Expone el puerto 8080 para que se pueda acceder a la aplicación desde fuera del contenedor
EXPOSE 8080

# Inicia la aplicación cuando se ejecute el contenedor
CMD ["python", "main.py"]
