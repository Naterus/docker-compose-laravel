# docker-compose-laravel
<p align="center">

<a href="https://github.com/Naterus/restful-countries/blob/main/LICENSE"><img src="https://restfulcountries.com/assets/images/license-mit.svg" alt="License"></a>
</p>

The code in this repo runs [https://restfulcountries.com](https://restfulcountries.com) open source laravel application on nginx using a shell script (launch.sh).


The shell script checks for docker and docker-compose installations and installs them if not found.Then creates and runs nginx,mysql and php image using docker-compose.  

The installation of docker and docker-compose via launch.sh is only tested for ubuntu machine, if you are on Windows, ensure to manually install docker toolbox and docker-compose before running the launch script.

To  check if you have docker installed, open terminal and type
```bash
  docker --version
```
You should see docker the docker version.

Also check for docker-compose installation, you should see the version as well.
```bash
  docker-compose --version
```

# Run Script
Clone this repository to get a copy of the project.

```angular2html
  git clone https://github.com/Naterus/docker-compose-laravel.git
```

verify you have all files and folders matching with the repository.

navigate to the root directory of the cloned project in your terminal and type

```bash
  sudo ./launch.sh
```
Look out for prompts and select Y to all.

You should see nginx-service,mysql-service and php-service all started. 

open [localhost:8088](localhost:8088) in your browser, you should see restfulcountries app running.

## Todo
- Add docker and docker-compose installation for windows and other linux distribution to launch.sh

## License

Software licensed under the [MIT license](https://opensource.org/licenses/MIT).