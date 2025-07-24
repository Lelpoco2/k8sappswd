# Usa l'immagine base Python 3.11 slim
FROM python:3.11-slim

# Imposta la directory di lavoro all'interno del container
WORKDIR /app

# Copia il file requirements.txt nella directory di lavoro
COPY requirements.txt ./

# Installa le dipendenze Python specificate in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia tutto il contenuto della directory corrente nella directory di lavoro del container
COPY . .

# Espone la porta 5000 per il traffico esterno
EXPOSE 5000

# Comando di avvio del container: esegue backend.py con Python
CMD ["python", "backend.py"]