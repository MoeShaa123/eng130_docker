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
- `docker commit [username:repo]`
- `docker pull`


