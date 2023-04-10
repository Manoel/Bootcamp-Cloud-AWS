## Servidor de Banco de Dados
	- MySQL

## Instalando o MySQL
	- apt install mysql-server-8.0 -y
	- mysql -u root -p (Acessando o banco de dados com user root)
	- show databases; (Listar todos os bancos de dados criados)
	- create database meubanco; (Criando banco de dados)
	- use meubanco (Para utilizar o banco de dados)
	- create table Pessoas (PessoaID int, Nome varchar(50), Sobrenome varchar(50), Endereco varchar(100), Cidade varchar(50)); (Criando uma tabela)
	- show tables; (Verificar se a tabela foi criada)
	- select * from Pessoas; (Consultando a tabela)
	- insert into Pessoas (PessoaID, Nome, Sobrenome, Endereco, Cidade) values (1,'Carlos','da Silva','Av. do Carmo, 500','Jaboticabal-SP'); (Inserindo dados na tabela)