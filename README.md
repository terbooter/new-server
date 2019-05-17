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

## Update from 18.03~ce
```
sudo apt-get update

sudo apt-get install -y docker-ce=18.06.3~ce~3-0~ubuntu
```

## Update docker-compose 
```
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

## CLI Promt with colored username and host (Like in hetzner)
```
export PROMPT='${ret_status} $fg[red]%}$USER$fg[yellow]%}@$fg[cyan]%}%m %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
```
Append to `~/.ssh/zshrc` file