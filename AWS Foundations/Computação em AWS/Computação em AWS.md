# Computação em AWS

### Elastic Compute Cloud - EC2


   * Um dos primeiros serviços da AWS
     * Capacidade computacional segura e redimensionável
       * Computação: CPU, Memória, Rede, Armazenamento, Sistema Operacional
       * Definição de preço conforme uso e modalidades especificas a necessidade
       * Instâncias com tipos otimizados para sua atividade


### Conceito chave - Instância

* Servidor virtual na nuvem AWS
* Possui configurações de Memória, CPU, disco, rede e sistema

### Tipos de Instância

* Uso geral
  * Equilibrio de recursos de computação, Memória e Rede
  * Indicado para servidores de aplicativo, jogos, backend, banco de dados pequenos

* Otimizadas para computação
  * Ideal para cargas de trabalho que exigem processadores de alto desempenho
  * Podem ser udado para os mesmos casos de uso da categoria de uso geral, mas quando se deseja um melhor desempenho
  * Ideal também para processamento em lote

* Otimizadas para Memória
  * Projeto par alto desempenho no processamento de grandes quantidades de informações na Memória
  * Exemplo: Banco de dados de alto desempenho, processamento em tempo real de dados

* Computação acelerada
  * Usa aceleração de hardware ou coprocessadores para executar alguns funções de forma mais eficiente do que em um software executado direto na CPU
  * Exemplos de casos de uso: Cálculo de ponto flutuante, processamento de gráficos e correspondência de padrões de dados

* Otimizadas para Armazenamento
  * Ideal para cargas de trabalho que exigem acesso de leitura e gração com grande volume de dados.
  * Casos de uso: Sistemas de arquivos distribuídos, Data Warehouse, sistema de processamento de transações on*line.

### Amazon EC2 Auto Scaling

* Provê escalabilidade horizontal para seus serviços
* Melhora a tolerância a falhas com identificação de Instâncias indisponíveis e implantação multi*AZ
* Melhor gerenciamento de custos

### Abordagem

* Scaling Preditivo
* Scaling Dinâmico
* É possível combinar os dois

### Amazon Load Balancing - ELB

* Balanceamento de carga de aplicação, gateway e Rede
* Escopo regional
* Escala de forma automática, sem custos
* Junto ao EC2 AutoScaling permite criar aplicações altamente disponíveis

### Serviços de Mensageria - SQS

* Sistema de enfileiramento de mensagens
* Um usuário envia uma mensagem para fila, o outro usuário lê, processa e a exclui da fila.

### Serviços de Mensageria - SNS

* Sistema pub/sub
* Utiliza tópicos como estrutura
* Usuário publica mensagens no tópico e assinantes escutam

### Computação sem Servidor

* Também chamado pelo termo "Serveless"
* O termo "sem servidor" significa que o código é executado em servidores sem que você precise provisionar ou gerenciar esses servidores
* Capacidade automaticamente ajustada pelo serviço, sem necessidade de nenhuma configuração

### AWS Lambda

* Execução de código se provisionar servidores
* Código organizado em funções
* Você pode escolher a linguagem de programação de sua preferência
* Executa a partir de eventos ou chamadas diretas a API do Lambda

### Containers em AWS

* Forma padrão de empacotar seu aplicativo em um único objeto
* Exeutados como processos isolados
* Docker (Construção de imagen)

### Serviços AWS (Relação com Containers)

* ECR - Elastic Container Registry (Armazenar, gerenciar e implantar facilmente imagens de contêineres do Docker)
* ECS - Elastic Container Service (Serviço de orquestração de contêineres totalmente gerenciado)
* EKS - Elastic Kubernetes Service (EXECUTAR o KUBERNETES)
* AWS Fargate (Mecanismo de computação SEM SERVIDOR PARA CONTÊINERES. Ele funciona com o Amazon ECS e o Amazon EKS)
