## Preparatório para Certificação AWS Cloud Practitioner


### Assuntos Complementares para o Exame AWS Cloud Practitioner


### Migrando para a AWS

* Cenário global de transformação digital
* Migrar é um trabalho árduo
* Envolve todas as áreas de uma empresa
* Cada área possui visões diferentes do todo

### Estratégias de migração

* Rehosting
	* Mover sem mudanças
* Replatform
	* Mover e fazer pequenas melhorias
* Repurchasing
	* Mover utilizando SaaS
* Retire
	* Não migrar, arquivar o mesmo
* Retain
	* Não migrar, e manter on-premisse
* Refactoring ou Re-architecting
	* Mais agressiva, redesenhar a aplicação, muito complexa, varias mudanças.


## AWS Cloud Adoption Framework AWS CAF

* AWS CAF
* Trabalho resultante de diversos processos de migração
* Identifica recursos organizacionais que direcionam a preparação para a nuvem
* Seis perspectivas: 

* Negógios
	* Garante que a TI esteja alinhada às necessidades do negócio e que os investimentos em TI estejam vinculados aos principais resultados dos negócios
	
* Pessoas
	* Alteração da estrutura organizacional para aderir a nuvem 
	* Buscar entender as funções organizacionais e possiveis lacunas a preencher para atender as habilidades necessárias
	
* Governança
	* Buscar habilidades e processos para alinhar estratégia de negócios e TI
	* Busca minimizar riscos
	* Busca entender como atualizar habilidades e processos de equipe necessários para garantir Governança dos negócios na nuvem
	
* Plataforma
	* Inclui princípios e padrões para implementação de novas soluções na nuvem e migração de cargas de trabalho locais
	* Use uma variedade de modelos arquitetônicos para entender e comunicar a estrutura dos sistemas de TI e suas relações. Descreva a arquitetura do ambiente de destino em detalhes
	
* Segurança
	* A perspectiva de Segurança garante que a organização atenda aos objetivos de Segurança de visibilidade, auditoria, controle e agilidade
	* Use o AWS CAF para estruturar a seleção e a implementação de controles de Segurança que atendam às necessidades da organização
	
* Operações
	* A perspectiva de operações ajuda a habilitar, executar, usar, operar e recuperar cargas de trabalho de TI para o nível definido com os stakeholders da empresa

### AWS Well Architected Framework

* Ajuda a construir infraestrutura seguras, resilientes, eficientes e de alta performance para aplicações e workloads
* Descreve os principais conceitos, princípios de projeto e práticas recomendadas para protejer e executar workloads na nuvem

### 6 Pilares do Well Architected Framework

* Excelência operacional
	* Consumir processos e utilizar as ferramentas da AWS cuidando da operação de forma saudavel
	
* Segurança
	* Definição de politicas, quais soluções utilizamos na nossa arquitetura, para cuidar do sistema
	
* Confiabilidade
	* Como tolerar as falhas, como recupera as falhas
	
* Eficiência de performance
	* Se estamos utilizandos os feets certos
	
* Sustentabilidade
	* Se utilizamos os recursos de forma eficientes
	
* Otimização de custos
	* Estou usando de forma correta, minimizando os custos.
	
### Familia AWS Snow

* AWS Snow Family.
	* É uma coleção de dispositivos físicos para transporte físico de até exabytes de dados para dentro e para fora da AWS. 
	* A AWS Snow Family. consiste nos serviços AWS Snowcone., AWS Snowball. e AWS Snowmobile.
	* Esses dispositivos oferecem diferentes pontos de capacidade e a maioria inclui recursos de computação integrados. 
	* A AWS é a proprietária e responsável pelo gerenciamento da Snow Family, que integra recursos de segurança, monitoramento, gerenciamento de armazenamento e computação da AWS. 


* AWS SNOWCONE.
	* O AWS Snowcone é um dispositivo pequeno, robusto e seguro para transferência de dados e COMPUTAÇÃO DE BORDA.
	* Ele tem 2 CPUs, 4 GB de memória e 8 TB  HDDde armazenamento utilizável, e 14 TB .
	* Rece em casa, copia os dados e envia para AWS


* AWS SNOWBALL.
	* Compativel com AWS Lambda
	* O AWS Snowball oferece DOIS tipos de DISPOSITIVOS: os dispositivos
	
	* SNOWBALL EDGE otimizados para armazenamento são ideais para migrações de dados de grande escala e fluxos de trabalho de transferência recorrentes, em além da computação local com necessidades maiores de capacidade. 
	* Armazenamento: 80 TB de capacidade de disco rígido (HDD) para volumes de blocos e armazenamento de objeto compatível com o Amazon S3., além de unidade de estado sólido (SSD) de 1 TB para volumes de blocos. 
	* Computação: 40 vCPUs e 80 GiB de memória para dar suporte a instâncias sbe1 do Amazon EC2 (equivalente a C5).

	* O SNOWBALL EDGE otimizado para computação fornece recursos de computação poderosos para casos de uso, como machine learning, análise de vídeo em movimento completo, análise e pilhas de computação locais. 
	* Armazenamento: capacidade de HDD utilizável de 42 TB para armazenamento de objeto compatível com o Amazon S3 ou volumes de blocos compatíveis com o Amazon EBS e também 7,68 TB de capacidade de SSD NVMe utilizável para volumes de blocos compatíveis com o Amazon EBS. 
	* Computação: 52 vCPUs, 208 GiB de memória e uma GPU NVIDIA Tesla V100 opcional. Os dispositivos executam as instâncias sbe-c e sbe-g do Amazon EC2, que são equivalentes às instâncias C5, M5a, G3 e P3.

    * Dispositivo físico para migrar grandes quantidade de dados entre data centers.


* AWS SNOWMOBILE.
	* O AWS Snowmobile é um serviço de transferência dados na escala de exabytes usado para mover grandes quantidades de dados para a nuvem AWS.
	* Você pode transferir até 100 petabytes por Snowmobile, um contêiner de transporte reforçado com 13,71 metros de comprimento puxado por um caminhão semirreboque.
	* Desligamento de data Center
