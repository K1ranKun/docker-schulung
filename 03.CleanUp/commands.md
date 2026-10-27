docker volume prune -a -f
docker volume ls -f dangling=true
docker container prune -f
docker container prune -f --filter "until=24h"