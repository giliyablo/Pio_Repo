docker build -t gili/gili-pio-app-image:latest  .

docker image ls
REPOSITORY                            TAG                 IMAGE ID            CREATED             SIZE
gili/gili-pio-app-image     latest   


docker run -d -p 8080:80 gili/gili-pio-app-image:latest


docker ps
CONTAINER ID        IMAGE                                      COMMAND                  CREATED             STATUS              PORTS                  NAMES
12d6293d6e19        gili/gili-pio-app-image					   "/docker-entrypoint.…"   16 seconds ago      Up 14 seconds       0.0.0.0:8080->80/tcp   keen_khayyam


docker exec -it 12d6293d6e19 bash

						sh 'ng serve'
						sh 'ng test'
						sh 'ng e2e'  
						

docker login -u <username> -p <password>
docker push gili/gili-pio-app-image:latest


