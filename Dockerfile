FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
COPY interface/ ./interface/
COPY models/ ./models/
COPY data/ ./data/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
CMD ["streamlit", "run", "interface/streamlit_app.py", "--server.port=8501", "--server.address=0.0.0.0"]
    