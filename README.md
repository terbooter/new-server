# Provisioning script to setup new instance of ubuntu server
## Clone and run
* `mkdir /dockerdata && cd /dockerdata` all custom data lives *only* in that folder
* `git clone https://github.com/terbooter/new-server.git`
* `/dockerdata/new-server/install-docker.sh`

## Commands
* `docker ps --format "table {{.Names}}   \t{{.Command}}\t{{.Ports}}\t{{.Status}}"`
* Copy config to file `~/.docker/config.json`
```
{
  "psFormat": "table {{.Names}}   \\t{{.Command}}\\t{{.Ports}}\\t{{.Status}}"
}
```