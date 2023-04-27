# Definir imagem base
FROM node:16-alpine

# Definir diretório de trabalho
WORKDIR /app

# Copiar arquivos do projeto para o contêiner
COPY . .

# Instalar dependências do projeto
RUN npm install

# Construir o projeto React
RUN npm run build

# Definir imagem base para o servidor web
FROM nginx:1.21-alpine

# Copiar arquivos do build do React para a imagem do servidor web
COPY --from=0 /app/build /usr/share/nginx/html

# Definir porta a ser exposta
EXPOSE 80

# Iniciar servidor web do nginx
CMD ["nginx", "-g", "daemon off;"]
