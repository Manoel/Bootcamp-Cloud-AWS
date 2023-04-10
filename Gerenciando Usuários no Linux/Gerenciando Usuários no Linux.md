## Gerenciando Usuários no Linux

Usuarios que serão criados no servidor, possuem caracteristicas mais administrativas.

Podem ser usuarios para realizar uma manutenção, configuração, consumir algum recursos, gravar arquivos.

Também existem usuarios desktop (Individualizados)

Para criar um usuarios

* useradd (nomedousuario)

Ao criar este usuario, o mesmo não possui senha e nem arquivos pessoais.

Para excluir o usuario
	* userdel -f nomedousuario

Caso fosse necessário a criação da pata home para o usuario criado com seu nome completo.
	* useradd joao -m -c "João da Silva"
	
Para visualizar
	* pwd
	
Para criar a senha para joao
	* passwd joao
	
Logando como joao
	* su joao

Como não foi definido qual o shell que joao ira acessar, faremos o seguinte.
	* chsh -s /bin/bash joao
	
Para excluir o usuario joao e pasta home e configuração de rede.
	* userdel -r -f joao

Criando o usuario joao já com a pasta home e configuração de shell.
	* useradd joao -m -c "João da Silva" -s /bin/bash<br></br>

---

## Editando informações do usuário.

Criando um usuário que tera acesso por tempo limitado no servidor.

	* useradd guest -c "Convidado" -m -e 30/01/2023 ==> Não foi gerado a configuração de shell para este user e o mesmo podera ter acesso até a data criada.

	* passwd guest ==> criando senha para este user

## Para realizar alteração neste user, usa-se o comando abaixo.

	* usermod guest -s /bin/bash ==> criando a configuração do shell

## Para que o user escolha cadastrar sua senha. Quando no camando abaixo não é especificado a data, o mesmo tera que trocar a senha agora.

	* passwd guest -e 

## Quais user estão cadastrado no sistema

	* cat /etc/passwd
	
##  Shell Script - Criando usuários em lote

	* useradd convidado1 -c "Convidado Especial" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
	
	## Poderia usar estes abaixo no lugar do -cript
		* MD5 = -1
		* SHA256 = -5
		* SHA512 = -6
		* APR1 = -apr1
		* AIX MD5 = -aixmd5
		
		## Exemplo: 
			* useradd convidado1 -c "Convidado Especial" -s /bin/bash -m -p $(openssl passwd -6 senha123) ==> estaria usando o SHA512.

## Gerando script para criação de varios usuarios com senhas definidas.

	Criar um diretorio na raiz (scripts) dentro dele criar o arquivo de texto: criar_user.sh
		* mkdir /scripts
		* cd /scripts/
		* ls
		* nano criar_user.sh
		
```bash


	#!/bin/bash

	echo "Criando usuários do sistema"

	useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
	passwd guest10 -e

	useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
	passwd guest11 -e

	useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
	passwd guest12 -e

	useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
	passwd guest13 -e


	echo "Finalizado!"

```
## Obs: O arquivo criado não possui permissão de execução. Para tal é preciso liberar a permissão
	* chmod +x criar_user.sh
	
	Para executa-lo
		* ./criar_user.sh

## Adicionando Usuários e grupos
	* useradd mariana -c "Mariana dos Anjos" -m -s /bin/bash -p $(openssl passwd -6 senha123)
	
## Quais os grupos existentes
	* cat /etc/group
	
## Adicionando o usuário mariana ao grupo adm(Fazer isto com o user root).
	* usermod -G adm, sudo mariana
	
## Verificando se a mariana foi adicionada nos grupos (adm e sudo).
	* cat /etc/group
	
## Criando e verificando um diretorio mariana, apos mariana estar no grup soudo e adm
	* sudo mkdir /mariana
	* ls -l /
resultado
	* drwxr-xr-x   2 root root       4096 jan 28 19:28 mariana
	
## Obs: mariana, agora podera realizar qualquer atividade de administrador, porém devera usar o sudo, pois a mesma não é usuario root, apenas tem privilegios de adm.

## Adicionando novos grupos
	* groupadd GRP_ADM
	* groupadd GRP_VEN
	* groupadd GRP_TESTE
	
## Excluindo grupos
	* groupdel GRP_TESTE
	
## Verificando grupos criados
	* cat /etc/group
	
## Posso criar usuarios aos grupos no momento da sua criação.
	* useradd rodrigo -c "Rodrigo Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
	* useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
	* useradd daniel -c "Daniel Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
	* useradd maisa -c "Maisa Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
	
## Passando um usuário já existente para um grupo recem criado.
	* usermod -G GRP_VEN joao 
	
## Retirando um usuário do grupo sudo e adm, e enviando para o grupo GRP_VEN.
	* usermod -G GRP_VEN mariana
	
	## Grupo em que mariana estava
		sudo:x:27:manuserver,mariana
		adm:x:4:syslog,manuserver,mariana
	## Grupo a qual mariana foi enviada.
		GRP_VEN:x:1011:daniel,maisa,joao,mariana
		
		## Veja que foi removida
			adm:x:4:syslog,manuserver
			sudo:x:27:manuserver
			
## Para permanecer mariana nos grupos sudo e adm, mas também enviar-la para o grup GRP_VEN
	* usermod -G sudo,adm,GRP_VEN mariana

## Para retirar mariana apenas do grupo sudo.
	* gpasswd -d mariana sudo
	
## Conhecendo o sistema de permissões
	R   |   W   |   x   |   R   |   W   |   X   |   R   |   W   |   X   |
	---------------------------------------------------------------------
	4	|	2	|	1	|	4	|	2	|	1	|	4	|	2	|	1	|
	---------------------------------------------------------------------
		DONO			|		GRUPO			|		OUTROS			|
    ---------------------------------------------------------------------
    R - Read(leitura)	|W - (gravação)			|X - (execução)			|	
	

## Trocando o dono e grupo do diretorio "adm"
	## Como estava
		* drwxr-xr-x   2 root root       4096 jan 28 23:00 adm
	## comando
		* chown debora:GRP_ADM /adm
	## Como ficou
		* drwxr-xr-x   2 debora GRP_ADM       4096 jan 28 23:00 adm


## Fazendo o mesmo acima para mariana, porém o grupo sera GRP_VEN
	## Como estava
		* drwxr-xr-x   2 root   root          4096 jan 28 23:00 ven
	## comando
		* chown mariana:GRP_VEN /ven
	## Como ficou
		* drwxr-xr-x   2 mariana GRP_VEN       4096 jan 28 23:00 ven
		
# Alterando as permissões de um diretório-arquivo

## Alterando as permissões do usuario debora, para ser total, usuarios do grupo tenham permissão para leitura e execução, os outros sem permissão.
	## Como estava
		* drwxr-xr-x   2 debora  GRP_ADM       4096 jan 28 23:00 adm
	## comando
		* chmod 750 /adm/
	## Como ficou
		* drwxr-x---   2 debora  GRP_ADM       4096 jan 28 23:00 adm
		
## Alterando as permissões do diretório "ven", onde o dono e grupo tenha permissão total, os outros tem permissão de leitura e gração.
	## Como estava
		* drwxr-xr-x   2 mariana GRP_VEN       4096 jan 28 23:14 ven
	## comando
		* chmod 775 /ven/
	## Como ficou
		* drwxrwxr-x   2 mariana GRP_VEN       4096 jan 28 23:14 ven
		
	## Consegue apagar o arquivo da mariana.
		* maisa@servidormanu:/ven$ rm arquivo-mariana.txt
		* rm: remove write-protected regular empty file 'arquivo-mariana.txt'? y
	## Consegue criar um arquivo.
		```bash
		maisa@servidormanu:/ven$ touch arquivo-maisa.txt
		maisa@servidormanu:/ven$ ls -l
		total 0
		-rw-rw-r-- 1 maisa maisa 0 jan 29 12:55 arquivo-maisa.txt
		```
		
## Verificando permissões de usuarios que não pertence ao "ven" (Consegue acesso ao diretório, ler o arquivo-maisa, e não consegue remover o arquivo-maisa.txt).
	```bash
	rodrigo@servidormanu:/$ cd /ven/
	rodrigo@servidormanu:/ven$ ls
	arquivo-maisa.txt
	rodrigo@servidormanu:/ven$ cat arquivo-maisa.txt
	rodrigo@servidormanu:/ven$ rm arquivo-maisa.txt
	rm: remove write-protected regular empty file 'arquivo-maisa.txt'? y
	rm: cannot remove 'arquivo-maisa.txt': Permission denied
	```
	
## Pode trocar permissão de um arquivo especifico? (O dono tem permissão total, trocou o grupo de root para GRP_ADM, onde o mesmo podera ler e executar apenas. Usuario do grupo "adm" não tem permissão para apagar arquivos )
	```bash
	root@servidormanu:/adm# nano texto-adm.txt
	root@servidormanu:/adm# ls -l
	total 8
	-rw-r--r-- 1 root   root   59 jan 29 13:07 texto-adm.txt
	-rw-rw-r-- 1 debora debora 43 jan 28 23:34 texto-debora.txt
	
	root@servidormanu:/adm# chown root:GRP_ADM texto-adm.txt
	root@servidormanu:/adm# ls -l
	total 8
	-rw-r--r-- 1 root   GRP_ADM 59 jan 29 13:07 texto-adm.txt
	-rw-rw-r-- 1 debora debora  43 jan 28 23:34 texto-debora.txt
	
	root@servidormanu:/adm# chmod 750 texto-adm.txt
	root@servidormanu:/adm# ls
	texto-adm.txt  texto-debora.txt
	root@servidormanu:/adm# ls -l
	total 8
	-rwxr-x--- 1 root   GRP_ADM 59 jan 29 13:07 texto-adm.txt
	-rw-rw-r-- 1 debora debora  43 jan 28 23:34 texto-debora.txt
	
	rodrigo@servidormanu:/$ cd adm/
	rodrigo@servidormanu:/adm$ ls
	texto-adm.txt  texto-debora.txt
	rodrigo@servidormanu:/adm$ rm texto-adm.txt
	rm: remove write-protected regular file 'texto-adm.txt'? y
	rm: cannot remove 'texto-adm.txt': Permission denied
	```
	
## Foi criado a pasta "publica", onde os usuarios teram permissão total (777).
	```bash
	root@servidormanu:/# mkdir /publica
	root@servidormanu:/# ls -l
	drwxr-xr-x   2 root    root          4096 jan 29 13:17 publica
	
	root@servidormanu:/# chmod 777 /publica/
	root@servidormanu:/# ls -l
	drwxrwxrwx   2 root    root          4096 jan 29 13:17 publica
	
	debora@servidormanu:/adm$ cd /publica/
	debora@servidormanu:/publica$ ls
	debora@servidormanu:/publica$ touch arquivo-texte.txt
	
	maisa@servidormanu:/$ cd /publica/
	maisa@servidormanu:/publica$ ls
	arquivo-texte.txt
	maisa@servidormanu:/publica$ ls -l
	total 0
	-rw-rw-r-- 1 debora debora 0 jan 29 13:38 arquivo-texte.txt
	maisa@servidormanu:/publica$ rm arquivo-texte.txt
	rm: remove write-protected regular empty file 'arquivo-texte.txt'? y
	maisa@servidormanu:/publica$ ls -l
	total 0
	
	```
## Entendendo melhor as permissões de execução para scripts.
	```bash
	root@servidormanu:/# cd /scripts/
	root@servidormanu:/scripts# ls
	criar_user.sh
	
	root@servidormanu:/scripts# nano date.sh
	root@servidormanu:/scripts# ls -l
	total 8
	-rwxr-xr-x 1 root root 503 jan 28 18:00 criar_user.sh
	-rw-r--r-- 1 root root  53 jan 29 13:52 date.sh

	
	root@servidormanu:/scripts# cat date.sh

	#!/bin/bash

	echo "Exibindo a data atual...."

	date
	
	```
	
## Permissões do dono (Leitura e gravação), para o grupo e outros (apenas leitura). Para que o arquivo date.sh seja executado, tenho que trocar a permissão.
	```bash
	root@servidormanu:/scripts# ./date.sh
	bash: ./date.sh: Permission denied
	```
	## Como estava
		* -rw-r--r-- 1 root root  53 jan 29 13:52 date.sh
	## Como ficou
		```bash
		root@servidormanu:/scripts# chmod 744 date.sh
		root@servidormanu:/scripts# ls -l
		total 8
		-rwxr-xr-x 1 root root 503 jan 28 18:00 criar_user.sh
		-rwxr--r-- 1 root root  53 jan 29 13:52 date.sh
		
		
		root@servidormanu:/scripts# ./date.sh
		Exibindo a data atual....
		dom 29 jan 2023 14:02:06 UTC
		
		```
		
## Removendo a permissão de execução, deixando a permissão de leitura e gravação.
	```bash
		root@servidormanu:/scripts# chmod 644 date.sh
		root@servidormanu:/scripts# ls -l
		total 8
		-rwxr-xr-x 1 root root 503 jan 28 18:00 criar_user.sh
		-rw-r--r-- 1 root root  53 jan 29 13:52 date.sh
		
	```
	
## Outra forma de realizar a permissão para o dono.
	```bash
	root@servidormanu:/scripts# chmod +x date.sh
	root@servidormanu:/scripts# ls -l
	total 8
	-rwxr-xr-x 1 root root 503 jan 28 18:00 criar_user.sh
	-rwxr-xr-x 1 root root  53 jan 29 13:52 date.sh
	
	```
## Removendo a permissão de execução
	```bash
	root@servidormanu:/scripts# chmod -x date.sh
	root@servidormanu:/scripts# ls -l
	total 8
	-rwxr-xr-x 1 root root 503 jan 28 18:00 criar_user.sh
	-rw-r--r-- 1 root root  53 jan 29 13:52 date.sh

	```