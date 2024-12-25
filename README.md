# EchoSign's Admin Portal:

## **Prerequisite:**

### 1. Install Docker application for desktop:

   https://docs.docker.com/desktop/setup/install/windows-install/

## How to get started:

### 1. Clone this project repository in your machine:

   https://github.com/Fei0716/echo_sign_admin_portal

### 2. Inside the cloned project directory, run the Docker container using this command:

  `docker-compose up -d`

### 3. Go inside the Docker application, and check whether these there images are running smoothly inside the container:

    a. laravel_nginx
    b. laravel_app
    c. laravel_mysql

### 4. With these three running error free, you can access these:

    a. localhost:8080 (laravel application)
    b. localhost:3306 (mysql => username: root, password: root)

### 5. To run php artisan commands, go into the project directory and run the commands with this template:

   `docker-compose exec app php artisan migrate`
   `docker-compose exec app php artisan optimize:clear`

### 6. To shutdown the container, run this:

   `docker-compose down`
