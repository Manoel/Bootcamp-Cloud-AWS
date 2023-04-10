## Gerenciamento de Discos Linux

	- Tipos de Discos
		- Hard Disc (HD)
		- Solid State Drive (SSD)
		- Solid State Drive (NVMe SSD)
		
# Sistemas de Arquivos
	- Sistema de arquivos é um padrão, uma forma como o sistema operacional usa para controlar como os dados são armazenados e recuperados.
	
Exemplos:
	Sistema Operacional              Sistema de Arquivos
      MacOS                            HFS
	  Unix/Linux                       Ext3,Ext4,XFS
	  Windows                          FAT32, NTFS
	  
# Particionamento
	- De um modo geral, o Particionamento é a divisão de um disco em partes. Cada parte ou partição é independente da outra. Cada partição pode ter um sistema de arquivos diferentes.
	
# Partições no Windos
	- No Windows cada partição é reconhecida como uma unidade e nomeada como uma letra: C, D, E, etc
	
# Partições no Linux
	- No Linux cada disco recebe um nome iniciado por sd: sda, sdb, sdc...
	- Cada partição do disco é numerada. Exemplo: sda1, sda2, sda3, sdb1, sbd2 ...

----------------------------------------------------------------------------

## Adicionando um novo disco

	- Comando para visualiar os Discos
		lsblk
		fdisk -l
		
# Particionando e formatando discos via terminal
	- fdisk <disco a ser particionado>
	- Como ajuda utilizo o comando: m 
	- n   add a new partition
	- p   print the partition table
	- Partition number (1-4, default 1)
	- First sector (2048-104857599, default 2048)
	- Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-104857599, default 104857599)
	- Created a new partition 1 of type 'Linux' and of size 50 GiB.
	- Save & Exit
	   w   write table to disk and exit
	   q   quit without saving changes
	- Salvar as alterações: w
	
# Formatando
	- mkfs.ext4 /dev/sdb

----------------------------------------------------------------------------
## Montando e Desmontando discos
	- Para montar um disco, é prciso de um diretório.
	- Local para montar disco: Na raiz, mnt
	- cd /mnt/
	- mkdir disco2 (Criando o diretório)
	- mount /dev/sdb/ /mnt/disco2/ (montando o disco)
	- Posso montar discos em diretórios diferentes
	- Não posso montar discos onde já exista arquivos
	- Se reiniciar o computador o disco não vai estar montado.
	
# Desmontando o disco
	- umount /dev/sdb
	- rmidr disco2/ (excluindo pasta. Neste caso o disco esta desmontado não esta apagando nada.)
	

----------------------------------------------------------------------------

## Montando discos automaticamente
	- lsblk (Onde os discos estão montados)
	- nano /etc/fstab (Editando o arquivo de configuração)
	- 