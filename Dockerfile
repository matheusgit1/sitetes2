# Usa uma imagem oficial do Python
FROM python:3.11.2

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de requisitos para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências especificadas no arquivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia todos os arquivos do diretório atual para o diretório de trabalho no contêiner
COPY . .

# Expõe a porta 8050 para o servidor Dash
EXPOSE 8050

# Comando para executar o aplicativo Dash quando o contêiner for iniciado
CMD ["python", "main.py"]