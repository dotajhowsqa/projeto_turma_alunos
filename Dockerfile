# # Use uma imagem Ruby como base
FROM ruby:latest

# Instale as dependências necessárias
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  npm \
  xvfb \
  firefox-esr \
  wget \
  apt-utils \
  unzip


ARG CHROMIUM_MAJOR_VERSION="95"


RUN CHROME_DRIVER_VERSION=$(wget -q -O - "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_${CHROMIUM_MAJOR_VERSION}") && \
    echo "Using chromedriver version: $CHROME_DRIVER_VERSION" && \
    wget -q -O /tmp/chromedriver_linux64.zip "https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip" && \
    rm -rf /opt/selenium/chromedriver && \
    unzip /tmp/chromedriver_linux64.zip -d /opt/selenium && \
    rm /tmp/chromedriver_linux64.zip && \
    mv /opt/selenium/chromedriver /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION && \
    chmod 755 /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION && \
    ln -fs /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION /usr/bin/chromedriver


# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Instale as gemas necessárias
COPY Gemfile gemfile.lock ./
RUN bundle install

# Copie o restante do código-fonte para o contêiner
COPY . .

# Comando padrão para execução dos testes
CMD cucumber