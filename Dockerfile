#Base image
FROM python:3.13-slim

#Working directory in Container
WORKDIR /app

#Copy project files to the container
COPY . /app/

#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Expose port
EXPOSE 5000

#Command to run the Flask app
CMD ["python", "app.py"]
