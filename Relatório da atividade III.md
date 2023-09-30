# Implantação do WordPress com Docker Compose

Este repositório fornece um exemplo de como implantar o WordPress e o banco de dados MySQL usando o Docker Compose. O Docker Compose é uma ferramenta que simplifica a criação e a administração de aplicativos Docker com várias partes.

## Configuração

O arquivo `docker-compose.yml` contém a configuração necessária para implantar o WordPress e o MySQL. Ele define dois serviços principais:

1. **Serviço do WordPress:**
   - Usa a imagem oficial do WordPress.
   - Mapeia a porta 8080 do host para a porta 80 do contêiner.
   - Cria um volume chamado `wordpress_data` para armazenar dados persistentes do WordPress em um diretório criado com o mesmo nome na pasta raíz onde se encontra o arquivo docker compose.
   - Define variáveis de ambiente para configurar a conexão com o banco de dados MySQL.
   - Utiliza a rede `wordpress_network` para comunicação.

2. **Serviço do MySQL:**
   - Usa a imagem oficial do MySQL 5.7.
   - Define variáveis de ambiente para criar o banco de dados e o usuário.
   - Cria um volume chamado `db_data` para armazenar dados persistentes do MySQL.
   - Também utiliza a rede `wordpress_network` para comunicação.

## Implantação

Para implantar o ambiente, siga estas etapas:

1. Clone este repositório para o seu sistema local.

2. Navegue até o diretório onde o arquivo `docker-compose.yml` está localizado.

3. Execute o seguinte comando para criar e iniciar os contêineres em segundo plano:

   ```bash
   docker-compose up -d

   ```
   Após a conclusão da implantação, você pode acessar o WordPress em seu navegador da web em http://localhost:8080.

## Licença
Este exemplo é fornecido sob a licença MIT. Sinta-se à vontade para adaptá-lo e usá-lo para seus próprios projetos.
