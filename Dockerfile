# Utiliser une image Python officielle
FROM python:3.8-slim

# Installer les dépendances
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copier le code de l'application
COPY . .

# Exposer le port 5000
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app.py"]
