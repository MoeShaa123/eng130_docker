# docker run nginx
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
