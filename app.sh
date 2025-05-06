echo "FROM python" > Dockerfile
echo "RUN pip install flask" >> Dockerfile 
echo "COPY index.html /home/myapp/templates/" >> Dockerfile 
echo "COPY app.py /home/myapp/" >> Dockerfile 
echo "EXPOSE 9000" >> Dockerfile 
echo "CMD python3 /home/myapp/sample_app.py" >> Dockerfile
docker build -t web2 .
docker run -d -p 9000:9000 --name web2 web2
docker ps 
