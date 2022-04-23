![release check](https://github.com/aguadoenzo/jmusicbot-docker/actions/workflows/check-release.yaml/badge.svg)
![docker image build](https://github.com/aguadoenzo/jmusicbot-docker/actions/workflows/update-docker-image.yaml/badge.svg)

### Docker image of jagrosh/MusicBot

## Usage
First, [create a discord bot token](https://github.com/jagrosh/MusicBot/wiki/Getting-a-Bot-Token)
and [get your discord user ID](https://github.com/jagrosh/MusicBot/wiki/Finding-Your-User-ID)

Create a `config.txt` file
```
token = <discord bot token>
owner = <user id>
prefix = "!"
```

Docker CLI
```sh
docker run -d -v "$PWD"/config.txt:/run/config.txt --restart=unless-stopped ghcr.io/aguadoenzo/jmusicbot:master
```

Docker Compose
```yaml
jmusicbot:
  image: ghcr.io/aguadoenzo/jmusicbot:master
  restart: unless-stopped
  container_name: jmusicbot
  volumes:
    - /path/to/config.txt:/run/config.txt
```

More information about MusicBot can be found on its [Wiki page](https://jmusicbot.com)

## Credits
Original project: [jagrosh/MusicBot](https://github.com/jagrosh/MusicBot)
