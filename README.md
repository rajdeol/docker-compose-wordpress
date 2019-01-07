# wordpress plugin development with docker-compose

Read https://rajislearning.com/wordpress-development-with-docker-compose/
for full detail of this repository.

To use this repository you need to install docker and docker-compose on your machine.

Clone the repository to your machine
```shell
  git clone https://github.com/rajdeol/docker-compose-wordpress.git
```

get into the folder and run :
```shell
  export UID=$(id -u $USER)
```
This will add uid of your current session user to UID variable which we are using to assign proper permissions in build container.
This will help you to edit your files on mounted volume by using your favorite editor on your host.

now run :
```shell
  docker-compose build
```

this will build the containers for you. After this run :
```shell
  docker-compose up
```
This command will run the containers. Two containers will be created one for MYSQL and another for wordpress.

The basic DB dump required for wordpress installation is already included in the docker/mysql directory.

To access the wordpress site open http://localhost:8000

Admin user and password is "wordpress". MYSQL database name is "wordpress" and root password is "wordpress".

You can configure all these values in Dockerfile in docker/mysql and docker/wordpress.

If you want a fresh install of wordpress everytime when you run your container then remove :

```shell
  ADD wordpress_data.sql /docker-entrypoint-initdb.d/
```

line from docker/mysql/Dockerfile.

The wp-content folder is mounted to the wordpress wp-content folder. You can create your plugin or theme and run them straight into your container.
