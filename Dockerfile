# Usa la imagen base de Open Notebook
FROM lfnovo/open_notebook:latest

# Copia los archivos necesarios (opcional)
COPY notebook_data /app/data

# Define el comando para ejecutar el contenedor (ya está incluido en la imagen base)
CMD ["streamlit", "run", "app.py"]
