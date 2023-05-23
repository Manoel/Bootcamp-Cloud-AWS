## Segurança de API's

* APIs são um dos meios mais usados na comunicação entre microsserviços e containers, assim como entre sistemas e aplicações
* Segurança de APIs é a proteção à integridade das APIs desenvolvidas e utilizadas por pessoas e empresas.

### Boa práticas para a Segurança de API's

* Tokens: estabelecer identidades confiáveis e controle o acesso a serviços e recursos tokens atribuídos a essas identidades
* Criptografia e assinaturas: criptografar os dados usuando métodos como o protocolo TLS
* Gateway de API: os gateways de API funcionam como o principal ponto de controle para autenticar, controlar e analisar o uso das API's

### Gerenciamento e Segurança de API's

* Chave de API: uma sequência de caracteres gerada por um único token.
* Autenticação básica: duas sequências de caracteres geradas por token(nome de usuário e senha)
* OpenID Connect: uma camada de identidade simples em cima da popular estrutura do OAuth

### Amazon Cognito

* É um serviço totalmente gerenciado que fornece autenticação, autorização, gerenciamento e sincronização de usuários para aplicações Web e móveis.
* Os usuários podem fazer login diretamente com um nome de usuário e uma senha ou por meio de terceiros, como o Facebook, a Amazon, o Google ou a Apple.

### Recursos do Amazon Cognito

* User Pools: são diretórios de usuários para login em aplicações Web ou móvel com o Amazon Cognito ou por meio de um provedor de identidade de terceiros (Idp)
* Identity Pools: permitem aos usuários objter credenciais temporárias da AWS (IAM) para acessar serviços da AWS, como o Amazon S3 e o DynamoDB. Oferencem suporte a usuários convidados anônimos e autenticados.

### Benefícios do Amazon Cognito

* Segurança aumentada
* Consistência entre plataformas
* Usuários anônimos e login social
* MFA e políticas de senhas
* Análise de comportamento de usuários

### Preços do Amazon Cognito

* Nível gratuito de 50.000 MAU's(usuários ativos mensais) para usuários que fazem login diretamente com o Cognito User Pool e de 50 MAU's para usuários federados por meio de provedores de identidade baseados em SAML 2.0

### Passo a passo da prática

* Criar uma API com o Amazon API Gateway
* Criar uma tabela no banco de dados com DynamoDB
* Criar funções de backend com o AWS Lambda
* Criar uma User Pool com o Amazon Cognito
* Configurar Authorizers para garantir a Autenticação de endpoints da API
* Registrar e realizar login de usuários
* Interagir com o a aplicação criada
 
