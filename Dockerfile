FROM openjdk:19-bullseye

WORKDIR /run

RUN apt update -q && apt -y install wget
RUN curl https://api.github.com/repos/jagrosh/musicbot/releases/latest |\
    grep 'browser_download_url' |\
    cut -d'"' -f4 |\
    wget -i - -O jmusicbot.jar

ENTRYPOINT ["java", "-Dnogui=true", "-jar", "jmusicbot.jar"]

CMD ["-Dconfig=/run/config.txt"]
