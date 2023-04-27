# Usa uma imagem de NodeJS com a última versão estável como base
FROM node:latest

# Define o diretório de trabalho como /app
WORKDIR /app

# Copia o package.json e o package-lock.json (se existir) para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todos os arquivos do projeto para o diretório de trabalho
COPY . .

# Compila o código TypeScript em JavaScript
RUN npm run build

# Expõe a porta 3000 para que o aplicativo seja acessível
EXPOSE 3000

# Define o comando para iniciar o aplicativo
CMD ["npm", "start"]
