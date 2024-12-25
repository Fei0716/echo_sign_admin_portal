# echo_sign_admin_portal

Prerequisite:
1. Install Docker(desktop):
https://docs.docker.com/desktop/setup/install/windows-install/

How to get started:
1. Clone this repository from Github:
   https://github.com/Fei0716/echo_sign_admin_portal/

2. In the cloned project repo, run this command to start the docker container:
   docker-compose up -d

3. To close the container, run this:
   docker-compose down

4. You can check whether the container is running smoothly inside Docker desktop app. Inside the app, you have to check whether all three of these images are running with no error:
   a.laravel_nginx
   b.laravel_app
   c.laravel_mysql

5. With all of the three images running, you can access these:
   a. localhost:8080 (laravel app)
   b. localhost:3306 (mysql => username: root, password: root)

6. To run php artisan commands, follow this template:
   docker-compose exec app php artisan <command>
   examples:
   docker-compose exec app php artisan migrate
   docker-compose exec app php artisan optimize:clear

   
