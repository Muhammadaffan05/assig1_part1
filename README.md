I started by creating a folder named docker_learning . Inside the docker_learning folder i created two files : app.py for simple Python program and a docker file which defines how the Docker image is built.

In the CMD i ran the following command to build the Docker image named "test-app":
"docker build -t test-app ."

After building the image, I give a tag name to it
"docker tag test-app:latest muhammadaffan05/test-app:latest"

Using "docker login" i logged in to my docker account using command prompt 

then i pushed my docker images to it : "docker push muhammadaffan05/test-app:latest" 

docker repo link : https://hub.docker.com/repository/docker/muhammadaffan05/test-app/general