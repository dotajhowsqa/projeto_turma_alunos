FROM ruby:latest

# Instale as dependências necessárias
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  npm \
  xvfb \
  firefox-esr \
  wget \
  unzip

# Instale o Chrome e o chromedriver
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -qq \
  && apt-get install -y google-chrome-stable \
  && CHROME_VERSION=`google-chrome --version | grep -oE "[0-9]+\\.[0-9]+\\.[0-9]+"` \
  && CHROMEDRIVER_VERSION=`curl -s "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_$CHROME_VERSION"` \
  && wget -q --continue -P /usr/local/bin/ "https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip" \
  && unzip /usr/local/bin/chromedriver_linux64.zip -d /usr/local/bin/ \
  && rm /usr/local/bin/chromedriver_linux64.zip

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Instale as gemas necessárias
COPY gemfile gemfile.lock ./
RUN bundle install

# Copie o restante do código-fonte para o contêiner
COPY . .

# Comando padrão para execução dos testes
CMD cucumber
