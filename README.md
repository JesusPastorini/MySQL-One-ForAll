# 🚀 Projeto: One For All

Bem-vindo ao repositório do projeto One For All! Este projeto visa consolidar os principais conceitos de SQL através da normalização de tabelas e resolução de desafios.

## ℹ️ Sobre o Projeto

No projeto One For All, normalizamos uma planilha semelhante ao banco de dados do Spotify e resolvemos uma série de desafios SQL com base nas informações normalizadas.

### O que Deverá ser Desenvolvido

- Normalização das tabelas da planilha SpotifyClone.
- Criação e população do banco de dados com as tabelas normalizadas.
- Resolução dos desafios de SQL.

## 🐳 Início Rápido com Docker Compose

Para iniciar o projeto com Docker Compose, siga as instruções abaixo:

```bash
npm install
docker run -p 3306:3306 --name mysql_8 -e MYSQL_ROOT_PASSWORD=password --platform=linux/amd64 -d mysql:8.0.23 mysqld --default-authentication-plugin=mysql_native_password
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test # roda todos os testes
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test -- -t "01" # rodando apenas o teste do requisito 01
