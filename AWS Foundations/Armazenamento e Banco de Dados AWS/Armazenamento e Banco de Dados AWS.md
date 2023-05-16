## Armazenamento e Banco de Dados AWS

### Tipos de Armazenamento

* Armazenamento de Objetos (Object Storage)
	* Object Storage
	* Dados como objetos (arquivos e metadados)
	* Dados não estruturados
	* Casos de uso: Data Lake, Mídias, Backup e recuperação
	
* Armazenamento de Arquivos (File Storage)
	* File Storage
	* Sistema de arquivos compartilhados
	* Permite acesso por meio de servidores, aplicações e usuários
	* Analogia com pastas compartilhadas em uma rede
	* Casos de uso: Ferramentas de desenvolvimento, Diretórios pessoais


* Armazenamento de Blocos (Block Storage)
	* Block Storage
	* Armazenamento de blocos: HDD, SSD
	* Dispositivo com diferentes configurações de Leitura e Escrita 
	* Caso de uso: Máquinas virtuais, contêiners, banco de dados
	

## Elastic Block Store EBS

* Armazenamento de Blocos
* Block, blocos = HD, físico
* Projetado para Amazon Elastic Compute Cloud(EC2)
* HDs são chamados "volumes"

### Volume Instance Store

* Armazenamento de Blocos
* Discos anexados fisicamente ao computador host
* Ideal para dados de armazenamento temporário como buffers, caches, dados de rascunho

### Como funciona

1. Defina o tipo do Volume
2. Escolha tamanho e configurações
3. Anexe o volume a uma instância EC2

### HDD

* Mais lento
* Mais barato
* Dois tipos: Disco rígido frio e otimizado para throughput

### SSD

* Mais rápido
* Mais caro
* Dois tipos: Volumes SSD de uso geral, IOPS provisionados

### Como funcionam os backups (EBS)

* Snapshots
* Backup Incremental


## Amazon S3

* Serviço de Armazenamento de Objetos
* S3 - Simple Storage Service

### Objeto S3

* Dados
* Metadados
	* Um conjuto de paraes de nome-valor com o qual é possível armazenar informações relacionadas ao objeto
* Chave
	* Nome que você atribui ao objeto. Usado para recuperar o objeto.
	
* valor
	 * O conteúdo que você está armazenando

### Os objeto estão onde?

* Buckets

### Buckets S3

* Antes de um upload dos seus objetos, você precisa criar um backet
* É um contêiner para objetos armazenados no Amazon S3
* Você pode armazenar qualquer número de objetos em um bucket
* Objetos podem ter de 0 até 5TB de tamanho
* Você pode ter até 100 buckets na sua conta
* controlar acesso por Objeto
* Utilizar versionamento de objetos

### Alguns casos de uso

* Data Lakes
* Arquivamento de Dados
* Hospedagem de sites estáticos

### Classes de Armazenamento

* Categorias para adequar melhor as necessidades de negócio e custo
* Fatores importantes na seleção de uma categoria
* Com que frequencia você pode planejar recuperar seus dados
* Seus dados precisam estar muito ou pouco disponíveis

### Classes de Armazenamento

* S3 Standard
	* Projetados para dados acessados com frequência
	* Armazena dados em um mínimo de 3 zonas de Disponibilidade
	* Boa escolha para diversos casos de uso, como sites, distribuição de contúdo e análise de dados
	* Custo mais auto
	
* S3 Standard-Infrequent Acces (S3 Standard-IA)
	* Semelhante ao S3 Standard
	* Armazena dados em um mínimo de 3 zonas de Disponibilidade
	* Ideal para dados com pouca frequência
	* Taxa por GB de armazenamento e recuperação mais baixo
	
* S3 One Zone-Infrequent Acces (S3 One Zone-IA)
	* Tem um preço de armazenamento menor do que o S3 Standard-IA
	* Armazena dados em uma única Zona de Disponibilidade
	* Cenários: Você quer economizar custos com armazenamento e você pode reproduzir facilmente seus dados em caso de falha na Zona de Disponibilidade
	
* S3 Intelligent-Tiering
	* Ideal para dados com padrões de acesso desconhecido ou em alteração
	* Gerencia automaticamete o ciclo de vida dos objetos armazenados otimizando custos
	* Requer uma pequena taxa mensal de monitoramento e automação por objeto

* S3 Glacier Instant Retrieval
	* Ideal para dados de longa duração, raramente acessados mas que exigem recuperação rápida(milissegundos)
	* Oferece acesso tão rápido quanto Standard e Standard-IA
	* Ideal para dados acessados uma vez por trimeste
	
* S3 Glacier Flexible Retrieval
	* Para dados que não requerem acesso imediato
	* Ideal para casos de uso de backups não urgentes, recuperação de desastres
	* Usuário pode escolher qual velocidade de recuperação
	* Ideal para dados acessados 1 ou 2 vezes por ano
	
* S3 Glacier Deep Archive
	* Suporte a retenção e preservação digital de longo prazo para dados que podem ser acessados 1 ou 2 vezes por ano
	* Ideal para empresas que precisam manter dados por conformidades legais por 7 a 10 anos
	* Recuperação de dados em até 12h


## EFS – Amazon Elastic File System

* Elastic File System
* Fornece um sistema de Arquivos
* Servless e totalmente elástico
* Escala até Pentabytes
* Aumente e diminua conforme adição e remoção de arquivos

### O que é EFS

* Compatível com protocolo NFS(Network file System)
* Pode ser acessado por EC2, Lambda, ECS
* Acesso simultânio ao mesmos dados sem problemas de performance

### Classes de Armazenamento

* Padrão (Instância regional): Standard e Stander-IA
* Uma AZ: One Zone e One Zone-IA(Infrequent Acces)

## Amazon Relational Database Service(RDS)

* PostgreSQL; MariaDB; Oracle; MySQL; SQL Server

* Faclilita configuração e provisionamento de hardware
* Patches automatizados
* backups
* Redundância
* Failover e Recuperação de Desastres.

## Amazon Aurora

* Servless
* Mecanismos compatíveis: PostgreSQL e MySQL
* Proço 1/10 de outros vendors
* Replicação multi-regional
* Até 15 réplicas de leituras
* Backups contínuo via S3

## DynamoDB

* Banco de dados não relacional(NoSQL)
* Gerenciado(Servless)
* performance abaixo de milissegundos
* Escala automaticamete
* Replicação de dados regional
* Caso de uso: Muitos dados, baixa latência

## Resumindo

* Tabelas: Coleção de Dados
* Item: Grupo de atributos identificável
* Atributo: Dados existentes dentro de cada Item

## Outros serviços de banco de dados

### Amazon DocumentDB(NoSQL)

* Banco de dados de documentos
* Gerencimento de conteúdo
* Catálagos, perfis de usuários
* compatível com cargas de trabalho MongoDB

### Amazon Neptune

* Redes sociais, mecanismos de recomendação, detecção de fraude e gráficos de conhecimento
* Banco de dados de grafos

### Amazon QLDB(Quantum Ledger Database)

* Banco de dados serviço ledger
* Imutabilidade
* Indicado para históricos, registros digitais, transações financeiras

### Amazon DynamoDB Accelerator

* Chamado também de DAX
* Camada de cache nativa para otimizar tempo de leitura de dados

### Amazon Elasticache

* Camada de cache sobre banco de Dados
* Compatível com Redis e Memcached

## Big Data com Amazon Redshift

* Serviço de Data Warehouse para análise de Big Data
* Oferece coletar informações de muitas fontes de Dados
* Projeta relações e tendências de Dados
* Usando Redshift Spetrum é possível rodar comandos SQL em cima de todas as fontes de dados agrupadas.















































