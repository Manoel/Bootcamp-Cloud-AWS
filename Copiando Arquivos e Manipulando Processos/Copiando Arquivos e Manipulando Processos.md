## Copiando Arquivos e Manipulando Processos

# Copiando Arquivos
	- cp <origem> <arquivo> <destino>
	- cp /home/manuserver/arquivo-manuserver.txt /disk2/
	- cp /home/manuserver/*.txt /disk2/ (Neste caso estamos copiando todos os arquivos com a extensão .txt)
	- Este comando sobrepõe os arquivos, caso já existam.
	- cp /home/manuserver/* /disk2/ -i (Desta forma estou utilizando o modo iterativo, onde é questionado sobreposição caso exista)
	- cp -i /home/manuserver/* /disk2/ (Desta forma estou utilizando o modo iterativo, onde é questionado sobreposição caso exista)
	- Caso tenha uma subpasta utiliza-se o comando: cp -i -r /home/manuserver/* /disk2/ (Ideal para backup)
	- Ativando o modo verbose: Mostra o que está fazendo naquele momento.
	- cp -i -r -v /home/manuserver/* /disk2/
	- Resultado:
	cp: overwrite '/disk2/arquivo-manuserver.txt'? y
	root@servidormanu:/# cp -i -r -v /home/manuserver/* /disk2/
	cp: overwrite '/disk2/arquivo-manuserver.txt'? y
	'/home/manuserver/arquivo-manuserver.txt' -> '/disk2/arquivo-manuserver.txt'
	
	- cp -v -r /etc/s* /disk2/backup/ (Copiando todos que comecem com a letra "s")
	- cp -v -r /etc/* /disk2/backup/ (Copiando tudo que estiver na pasta "etc")