# hello-phalcon-docker
Hello Phalcon on Docker compose

## Get Started
1. `git clone git@github.com:st34-satoshi/hello-phalcon-docker.git`
2. `cd hello-phalcon-docker`
3. `docker-compose up`
4. open `localhost:3001` in your browser

## Development
### Migration
- `docker-compose run app /vendor/bin/phalcon-migrations run`

### Create Controller using command
- `docker-compose run app /vendor/phalcon/devtools/phalcon create-controller user`


## How to make this repository
see [Hello Phalcon on Docker-compose | Notes to Forget](https://blog.stu345.com/hello-phalcon-on-docker-compose/)