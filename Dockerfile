# 1. Definição da imagem base do Node.js versão estáveç
FROM node:24-alpine
# 2. Definição do diretório de trabalho interno
WORKDIR /app
# 3. Cópia os arquivos de dependência
COPY package*.json ./
# 4. Execução de instalação do node
RUN npm install
# 5. Cópia do restante do código-fonte para o container
COPY . .
# 6. Documentação da porta utilizada pelo Express
EXPOSE 3000
# 7. Comando de inicialização do servidor
CMD ["node", "server.js"]