# Usamos una imagen base oficial de Python
FROM python:3.9-slim

# Establecemos el directorio de trabajo en /app
WORKDIR /app

# Copiamos el archivo requirements.txt (que crearemos más adelante)
COPY requirements.txt requirements.txt

# Instalamos las dependencias necesarias
RUN pip install -r requirements.txt

# Copiamos el resto del código de la aplicación
COPY . .

# Exponemos el puerto 5000 (el puerto por defecto de Flask)
EXPOSE 5000

# Indicamos el comando para ejecutar la aplicación
CMD ["python", "app.py"]
