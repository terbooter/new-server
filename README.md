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

## Disable SSH by password
* add pub keys to `~/.ssh/authorized_keys`
* check you are able to SSH without password
* disable SSH by password. edit `/etc/ssh/sshd_config`
```
PasswordAuthentication no
ChallengeResponseAuthentication no
UsePAM no
```
* `sudo systemctl restart ssh`

## Set locale
* https://www.mvoronin.pro/ru/blog/post-40
* https://stackoverflow.com/questions/55673886/what-is-the-difference-between-c-utf-8-and-en-us-utf-8-locales
* locale-gen en_US.UTF-8
* edit `/etc/default/locale`
* Put minimal config
```
LANG=C.UTF-8
LANGUAGE=en_US
LC_ALL=C.UTF-8
```

## Production docker version
docker -v
Docker version 19.03.5, build 633a0ea838

## Set UTC timezone
`sudo timedatectl set-timezone UTC`