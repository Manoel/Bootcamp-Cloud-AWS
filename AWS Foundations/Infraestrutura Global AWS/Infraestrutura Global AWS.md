# Infraestrutura Global AWS

## O que é Infraestrutura Global AWS?
	- Infraestrutura de datacenters em todo mundo que fornecem os diversos serviços que pode utilizar na AWS
	- Composta por Regiões e Zonas de Disponibilidades
	- Vantagens: Alta Disponibilidade, Tolerância a falhas
	
## Regiões e Zonas de Disponibilidade
	### Regiões
		- Locais onde são hospedados os data centers da AWS 
		- Cada Região possuem locais isolados chamados Zonas de Disponibilidade
		- Todas as Regiões são conectadas com rede de alta velocidasde
		- Isolamento de dados
		- Regulação de dados local
	
	### Zonas de Disponibilidade
		- Também chamadas de AZs (Availability Zones)
		- Agrupamento de datacenters isolados dentro de uma Região
		- Rede, energia e conectividade redundantes
		- Próximas o suficiente para manter baixa latência, longe o suficiente para evitar que um desastre afete mais de uma AZs
		- Recomendação: Execute pelo menos em duas AZs
		
## Pontos de Presença
	- Também chamado de Edge Locations, Locais de borda ou Redes de borda
	- Funcionam como pontos específicos pelo globo para distribuir conteúdo de forma rápida
	- Exemplos de serviços que se encontram nos locais de borda: Route 53(DNS), CloudFront (CDN)
	
	### CloudFront
		- Serviço de entrega de conteúdo: CDN
		- Melhora a performance do seu serviço (baixa latência, alta taxa de transferência)
		- Provê conteúdo o mais próximo possível do seu usuário
		
	### Route 53
		- Ajuda os clientes a redirecionar corretamente as requisições
		
# Como é possível interagir com os serviços AWS?
	- Console de gerenciamento
	- AWS CLI (Instalado na sua máquina), Opera com APIs da AWS através de linha de comando.
	- SDKs (Acesso as APIs através de SDK), Possui diversas linguagens, como: Java, C#, Go, Pyhton, JavaScript
	
# Provisionando Infraestrutura
	- Elastic Beanstalk
		- É um serviço que ajuda você a provisionar ambientes baseados no Amazon EC2
		- Também permite salvar as configurações do ambiente para que elas possam ser implantadas novamente. 
		- Fornece a conveniência de não ter que provisionar e gerenciar todos esses componentes separadamente e ainda te provê a visibilidade e o controle dos recursos que compõem o seu ambiente.
	- CloudFormation
		- Provisiona os recursos de maneira segura e repetível. Permite modelar, provisionar e gerenciar recursos. Ferramenta que trata a infraestrutura como código.
	
	