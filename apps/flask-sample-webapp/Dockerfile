# Dockerfile (production-ish)
FROM python:3.11-slim

# OS deps for some Python packages (if needed)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential gcc libpq-dev \
 && rm -rf /var/lib/apt/lists/*

# Create app user
RUN useradd --create-home appuser
WORKDIR /app

# Copy requirements first for Docker layer caching
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy app source
COPY . /app

# Ensure non-root
USER appuser

# Expose port used by the app
EXPOSE 5000

# Default command: use gunicorn if app exposes 'app' WSGI callable.
# Replace 'app:app' with '<module>:<callable>' if different.
CMD ["gunicorn", "--workers", "3", "--bind", "0.0.0.0:5000", "app:app"]
