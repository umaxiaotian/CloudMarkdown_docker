FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7 
RUN pip3 install fastapi uvicorn python-multipart python-jose peewee python-dotenv
EXPOSE 8000 
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]