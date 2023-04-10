## Gerenciamento de Pacotes Linux

No ubuntu são dois

1 - apt-get

apt-get is a command line interface for retrieval of packages
and information about them from authenticated sources and
for installation, upgrade and removal of packages together
with their dependencies.

Most used commands:
  update - Obter novas listas de pacotes
  upgrade - Executar uma actualização
  install - Instalar novos pacotes (o pacote é libc6 e não libc6.deb)
  reinstall - Reinstall packages (pkg is libc6 not libc6.deb)
  remove - Remover pacotes
  purge - Remover pacotes e ficheiros de configuração
  autoremove - Remover automaticamente todos os pacotes não utilizados
  dist-upgrade - Actualizar a distribuição, veja apt-get(8)
  dselect-upgrade - Seguir as escolhas feitas no dselect
  build-dep - Configurar as dependências de compilação de pacotes de códigofonte
  satisfy - Satisfy dependency strings
  clean - Apagar ficheiros de arquivo obtidos por download
  autoclean - Apagar ficheiros de arquivo antigos obtidos por download
  check - Verificar se existem dependências erradas
  source - Fazer o download de arquivos de código-fonte
  download - Obter o pacote binário para o directório actual
  changelog - Obter e mostrar o changelog de um pacote


2 - apt (Mais moderno, e interação mais amigavel)

apt is a commandline package manager and provides commands for
searching and managing as well as querying information about packages.
It provides the same functionality as the specialized APT tools,
like apt-get and apt-cache, but enables options more suitable for
interactive use by default.

Most used commands:
  list - list packages based on package names
  search - search in package descriptions
  show - show package details
  install - install packages
  reinstall - reinstall packages
  remove - remove packages
  autoremove - Remover automaticamente todos os pacotes não utilizados
  update - update list of available packages
  upgrade - upgrade the system by installing/upgrading packages
  full-upgrade - upgrade the system by removing/installing/upgrading packages
  edit-sources - edit the source information file
  satisfy - satisfy dependency strings
  
## Comando para verificar  o que está instalado na máquina.

apt list installed

## Comando para saber o que pode ser atulizado

apt list --upgradeable

## comando para buscar

apt search samba

## comando antigo para ver ip
ifconfig

## comando para realizar download
wget <link>

## comando para remover Pacotes
apt remove <nomepacote>

Se estiver dentro de um script, utilizar o comando abaixo
apt remove <nomepacote> -y

Se precisar baixar um pacote que não esta no repositorio do ubuntu oficialmente

Add repositorio atraves do comaondo abaixo

apt edit-sources

-----------------------------------------------------------------

## Atualização do Sistema Operacional

apt update (Atualiza os pacotes disponiveis)
apt upgrade -y (Fazer o upgrade do sistema do que foi baixado do update)

## Instalação de pacotes no ambiente Desktop

## Gerenciamento de pacotes (FEDORA RED HAT CenTOS)

São 2 comandos:

dnf  (Mais respostas como user)
yum   (Mais utilizado para criação de script's)

Comandos de install, remove, search, são parecidos como no Ubuntu.

## Obs: O RED Hat e CenTOS
	Se usar o comando: dnf update (baixa e já realiza a instalação e Atualizar).
	
## Realizando a instalação de arquivos DEB
	- Extensão DEB para DEBIA E UBUNTU
	- Extensão RPM para FEDORA, RED HAT, SUSI LINUX
	
## comando para instalação arquivo DEB

apt isntall./google-chrome-stable_current_amd64.deb








