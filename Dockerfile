# Use a imagem base do Ruby
FROM ruby:3.1.1

# Atualize os pacotes do sistema e instale as dependências do projeto
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  postgresql-client

# Defina a pasta de trabalho do container
WORKDIR /app

# Copie o Gemfile e o Gemfile.lock para a pasta de trabalho do container
COPY Gemfile Gemfile.lock ./

# Instale as dependências do projeto
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Copie o resto dos arquivos do projeto para a pasta de trabalho do container
COPY . .

# Exponha a porta 3000 do container
EXPOSE 3000

# Defina o comando padrão para iniciar o servidor Rails
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "8000"]
