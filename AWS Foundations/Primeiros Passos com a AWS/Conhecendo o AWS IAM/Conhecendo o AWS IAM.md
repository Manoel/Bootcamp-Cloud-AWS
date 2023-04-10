## Conhecendo o AWS IAM

	- Permite o gerenciamento seguro do acesso aos serviços e recursos da AWS por meio da criação de usúarios. grupos e permissões
	- Acesso compartilhado a conta da AWS: Fornece permissões de acesso a outros usuários
	- permissões granulares: usuários podem ter níveis de acesso diferentes de acordo com suas funções em uma conta AWS
	- MFA: Autenticação de múltiplos fatores
	- Idnetidades federadas: Credenciais podem ser importadas de outros provedores de identidade
	- Integração com serviços AWS: Estabelece níveis de permissões de acesso aos serviços AWS
	- Gratuito: O IAM não possui custos ou limites de uso.
	
### Termos e conceitos do IAM
	- Identy: Fornece acesso a uma conta na AWS
	- IAM Users: Representa uma pessoa ou serviço que utiliza serviços AW.
	- User Groups: Coleção de usuários IAM
	- IAM Roles: Conjunto de permissões que determinam o nivel de acesso de uma identidade aos serviços AWS
		- Inline Policy: permissões atreladas diretamente a uma identidade(não são reaproveitáveis)
		- Managed Policy: Conjunto de permissões disponivel para varias identidades.
		
		
## IAM Polices

	- Define permissões de acesso a serviços AWS
	- IAM Permissions: Nive mais baixo de hierarquia, determina se uma identidade pode ou não tomar uma ação sobre um recurso na AWS (Allow/Deny)
	
### Boa práticas

	- Conta rais: Nãu utiliza-la em tarefas diárias de desenvolvimento
	- Usuários: Crie usuários individuais.
	- Privilégios mínimos: Prover apenas o nível de acesso necessário
	- Permissões: Utilizar groupos de usuários com Permissions
	- Auditoria: Ativar o AWS CloudTrail
	- Senhas: Senhas fortes
	- MFA: Ativar para usuãrios privilegiados
	
### Criação de usuarios - Parte 1

	- Criar um novo usuarios
	- Gerar Credenciais de acesso
	- Atribuir permissões ao novo usuário criado
	- Acessar o console da AWS com o novo usuário criado
	- Testar Permissions de acesso atribuídas
	
### Criação de usuarios - Parte 2

	- Add User to groupos
	- Copy Permissions existing User
	- Atach existing policies


## Logando com o novo usuário e revendo políticas de acesso
	
	- Buscar as credenciais salvas
	- nome usuario e Senhas
	- redefinir a Senhas
	

