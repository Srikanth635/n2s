FROM intel4coro/base-notebook:20.04-noetic
    
USER root

SHELL ["conda", "run", "-n", "base", "/bin/bash", "-c"]

USER ${NB_USER}

# Initiate ROS workspace 
ENV ROS_WS=/home/${NB_USER}/workspace/ros
WORKDIR ${ROS_WS}/src
USER root

RUN rosdep update && apt update && apt install -y ffmpeg libglfw3 libglfw3-dev

WORKDIR  ${ROS_WS}
RUN catkin build


COPY --chown=${NB_USER}:users . /home/${NB_USER}/neem2sql
RUN chmod -R a+rwx ${PWD}

# Install dependencies and MariaDB
RUN apt-get update && \
    apt-get install -y \
        software-properties-common \
        lsb-release
        
RUN apt -y install mariadb-server mariadb-client

EXPOSE 3306

# # Install MongoDB Community Edition
ARG MONGODEB_VERSION=7.0
RUN curl -fsSL https://www.mongodb.org/static/pgp/server-${MONGODEB_VERSION}.asc | \
    gpg -o /usr/share/keyrings/mongodb-server-${MONGODEB_VERSION}.gpg --dearmor
RUN echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-${MONGODEB_VERSION}.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/${MONGODEB_VERSION} multiverse" | \
    tee /etc/apt/sources.list.d/mongodb-org-${MONGODEB_VERSION}.list
RUN apt update && apt install -y mongodb-org
RUN mkdir -p /data/db && \
    chown -R ${NB_USER}:users /data/db
 
RUN pip install neem_to_sql
 
CMD ["mysqld_safe"]    

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
