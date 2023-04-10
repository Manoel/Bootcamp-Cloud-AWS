## Servidores de Arquivos Linux
	- Software SAMBA (Serviço)
	- apt install samba -y
	- mkdir /disk2/publica
	- chmod 777 /disk2/publica/ (pasta a ser compartilhada)
	- Editar a configuração do arquivo no samba, para que a pasta publica esteja disponivel para toda rede.
	- nano /etc/samba/smb.conf
	- [publica]
		path = /disk2/publica
		writable = yes
		guest ok = yes
		guest only - yes
	- Realizar o restart do SAMBA
	- systemctl restart smbd
	- systemctl status smbd (Verificar como esta o serviço) 
	- systemctl enable smbd (Configuração para que o serviço suba quando o servidor reiniciar)