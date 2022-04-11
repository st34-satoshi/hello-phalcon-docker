# hello-phalcon-docker
Hello Phalcon on Docker compose

## Get Started
1. `git clone git@github.com:st34-satoshi/hello-phalcon-docker.git`
2. `cd hello-phalcon-docker`
3. migration only the first time: `docker-compose run app /vendor/bin/phalcon-migrations run`
4. `docker-compose up --build`
5. open `localhost:3001` in your browser

## Development
### Migration
- `docker-compose run app /vendor/bin/phalcon-migrations run`
- `docker-compose run app /vendor/bin/phalcon-migrations generate`

### scaffold
- `docker-compose run app /vendor/phalcon/devtools/phalcon scaffold --table-name users`


## How to make this repository
see [Hello Phalcon on Docker-compose | Notes to Forget](https://blog.stu345.com/hello-phalcon-on-docker-compose/)