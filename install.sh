@echo off
REM Atualizacao de pacotes e instalacao nao sao nativas via linha de comando padrao no Windows.
REM Certifique-se de que Node.js, npm e Git estao instalados e adicionados ao PATH do sistema.

REM Garante que os submodulos sejam baixados corretamente
git submodule update --init --recursive

REM Instala as dependencias da API
call npm install

REM Inicia a API em background (Porta 3000) usando start /b
start /b node server.js > api.log 2>&1
echo API iniciada em background. Verifique api.log para detalhes.