FROM node:latest
MAINTAINER Equipe QA Cvc
ENV NODE_ENV=production
COPY . /var/www           
WORKDIR /var/www
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000

# Copy quero todos os arquivos com o ponto e salvar na imagem dentro de www
# docker build -f Dockerfile -t nome_do_usuario/nome_da_imagem .
# docker run -p 8080:3000 -v "/workspace/projetos/volume-exemplo:/var/www" -w "/var/www"  node  npm start
# docker run -p 8080:3000 -v "$(pwd):/var/www" -w "/var/www" node npm start
