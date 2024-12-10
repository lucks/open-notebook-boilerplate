# Servicio surrealdb
FROM surrealdb/surrealdb:v2 as surrealdb
RUN mkdir -p /mydata
CMD ["start", "--user", "root", "--pass", "root", "rocksdb:/mydata/mydatabase.db"]

# Servicio open_notebook
FROM lfnovo/open_notebook:latest as notebook
COPY notebook_data /app/data
CMD ["streamlit", "run", "app.py"]
