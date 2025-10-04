@"
FROM node:20-alpine

WORKDIR /usr/src/app

# Copiar SOLO package.json primero
COPY package.json ./

# Instalar dependencias (generará lockfile si no existe)
RUN yarn install

# Ahora copiar el resto de archivos
COPY . .

EXPOSE 3000

CMD [\"node\", \"server.js\"]
"@ | Out-File -FilePath "Dockerfile" -Encoding UTF8 -Force