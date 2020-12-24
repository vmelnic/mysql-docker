# MySQL database

## Installation

Copy file ``.env.example`` to `.env`.

In order to install MySQL server via docker-compose run the following command:

```
docker-compose up -d --build
```

## Configurations

Exposed ports: 9360 and 9361

## Database management

Available Ansible tags:

* create
* delete
* backup
* rollback

Create database:
```
docker exec -ti mysql ansible-playbook -i 'localhost,' -c local /var/provision/playbooks/database.yml --extra-vars="user='demo' name='demo'" --tags "create"
```

The file with password for ``demo`` database is available in `docker/mysql/storage/mysql/.mysql.demo.password` file.

Delete database:
```
docker exec -ti mysql ansible-playbook -i 'localhost,' -c local /var/provision/playbooks/database.yml --extra-vars="user='demo' name='demo'" --tags "delete"
```

Backup database:
```
docker exec -ti mysql ansible-playbook -i 'localhost,' -c local /var/provision/playbooks/database.yml --extra-vars="user='demo' name='demo'" --tags "backup"
```

The database backup file for ``demo`` database will be available `docker/mysql/storage/backups/` directory.

Rollback database:
```
docker exec -ti mysql ansible-playbook -i 'localhost,' -c local /var/provision/playbooks/database.yml --extra-vars="user='demo' name='demo'" --tags "rollback"
```
