## Docker

- Docker is a software platform that allows you to build, test, and deploy applications quickly.

- Docker packages software into standardized units called containers that have everything the software needs to run including libraries, system tools, code, and runtime.

- Using Docker, you can quickly deploy and scale applications into any environment and know your code will run.

![image](https://user-images.githubusercontent.com/106158041/203054546-0470ce40-0a17-4a30-898d-1e5c21af00f2.png)


## Microservices

- Microservices architecture is an approach in which a single application is composed of many loosely coupled and independently deployable smaller services.

- With monolithic architectures, all processes are tightly coupled and run as a single service. This means that if one process of the application experiences a spike in demand, the entire architecture must be scaled.

- With a microservices architecture, an application is built as independent components that run each application process as a service. Because they are independently run, each service can be updated, deployed, and scaled to meet demand for specific functions of an application.


![image](https://user-images.githubusercontent.com/106158041/203054387-c2c175a5-589b-490a-bef1-6e31d7b8d25f.png)

## Benefits of using Microservices

- Code can be updated more easily - new features or functionality can be added without touching the entire application

- Teams can use different stacks and different programming languages for different components.

- Components can be scaled independently of one another, reducing the waste and cost associated with having to scale entire applications because a single feature might be facing too much load.

### Docker commands

- `docker --version` - should get the version 20.11
- `docker` - gets the cheat sheet for docker
- `docker pull hello-world` - downloads the hello-world container
- `docker images` - displays the images you have
- `docker run hello-world` - runs the image we downloaded before
- `docker ps` - draws the processes that are running at the moment
- `docker run -p 2368:2368 ghost` - will pull and then run it in one go and select the correct port
- `docker rm [docker id] -f` - to force delete docker that is running
- `docker run -p 80:80 nginx` - to launch nginx
- `docker run -d -p 80:80 nginx` - d stands for detatch mode so we will get the terminal back when run
- `docker stop [process id]` - stops the process running with all the
- `docker exec` -it [process id] bash - be able to execute shell commands in the process provided

- `docker cp index.htnk [id]:/usr/share/nginx/html/`
- `docker commit [id] [username:repo]`
- `docker push [username:repo]`
- `docker pull [username:repo]`

### Docker Automation
#### HTML task
- inside the same folder as index.html, create a Dockerfile
- `nano Dockerfile`
- Inside the Dockerfile write this
```
FROM nginx

# who is creating this
LABEL MAINTANER=mohamedyusuf

# created index.html progile - copy to container
# default location /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/

# docker run -d -p 80:80 name


# port number
EXPOSE 80

# launch the server
CMD ["nginx", "-g", "daemon off;"]
```
- This will replace the HTML file inside nginx with your own
- `docker build -t moeshaa123/130-nginx .` 
- `docker run -d -p 80:80 moeshaa123/130-nginx`

![html](https://user-images.githubusercontent.com/106158041/203329542-23b7c17e-d96e-428a-91c4-874d78b4068c.png)


#### App task

- In the Dockerfile expose Port 3000
- Install Npm
- Create a New Dockerfile where your app folder is
```
FROM nginx

LABEL MAINTAINER=mohamed
COPY app /home/
EXPOSE 80
EXPOSE 3000
RUN apt-get update
RUN apt-get install -y
RUN apt-get install software-properties-common -y
RUN apt-get install npm -y
CMD ["nginx", "-g", "daemon off;"]
WORKDIR /home/app
RUN npm install
CMD ["npm", "start"]
```
- `docker build -t moeshaa123/130-node .`
- `docker run -d -p 3000:3000 moeshaa123/130-node`

![Screenshot 2022-10-19 143255](https://user-images.githubusercontent.com/106158041/203329630-23c5efe8-8b15-4ff3-839e-efcf978409ac.png)

