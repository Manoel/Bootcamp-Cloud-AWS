# Manipulando Arquivos no Linux

### Terminal Linux - Apresentação

manuserver@servidormanu:~$

~ este siguinifica que estamos na pasta do usuario.

$ este indica que este usuario não é um superusuario, ou seja um usuario com restições, onde ele não pode istalar programas, acessar pastas etc

se tiver # este será um superusuario

comando clear (limpa a tela), atalho Ctrl+l<br></br> 

--------------------------------------------------

### Navegando pelo sitema de arquivos<br></br>

* pwd --> mostra em qual diretorio você esta.
* cd --> mudar de diretorio
* cd / --> me leva para o diretorio raiz
* ls --> visualizo os arquivos do diretorio atual
* cd nomedodiretorio --> abrir um deretorio
cores dos arquivos (azul = diretorio)
* cd .. volta um deretorio atraz
* cd ../diretorio --> volta um diretorio e entra no diretorio a seguir depois da /
* cd /var/lib para entrar no caminho do diretorio a seguir
* cd /var + a tecla tab 2x me mostra uma lista de diretorios
* cd e começar a digitar o nome do diretorio + a tecla tab, ele completa o nome do diretorio<br></br>
--------------------------------------------

### Filtrando a exibição de arquivos
comando para listar com "| more"

* ls | more

comando para sair do more

* Ctrl + c

Listando pelo nome do arquivo

* ls passwd

Se não existir o arquivo, ocorre a mensagem "No such file or directory"

 Dica: Quando for localizar um determinado arquivo, comece a digitar o nome do arquivo e precione a tecla "Tab" 2x, ele mostra quais arquivos começam com as inicias que você digitou.


* ls p* Vantagem: vai me dar os arquivos e diretorios iniciados com "p"

* ls m?g* Combinações de listagem, todas que comecem com a letra "m" , a segunda poder ser qualquer coisa "?", a terceira tem que ser "g".

Diretorio onde posso criar arquivos, no diretorio Home, que é o diretorio do usuario logado.

Atalho para ir para o diretorio do usuario 

* cd ~

* Comando touch --> criar arquivos vazios (em branco)

### Filtros para arquivos em sequencia

* ls arquivo[1-3].txt ou ls arquivo[1-3].* --> vai listar do 1 até o 3

### Pode ser usado para fazer copia.

Listar o 2 e 5

* ls arquivo[2,5].*

Listar todos menos o arquivo 5

* ls arquivo[^2,5]*

Não listar do 3 até o 5

* ls arquivo[^3-5]*


Obs: diretorios são na cor azul escuro, arquivos são na cor branco, link são na cor azul claro.

Usando o comando abaixo, conseguimos saber de que tipo são.

* ls -l

* começando com "-" significa que é um arquivo.
* começando com "d" significa que é um diretorio
* começando com "l" significa que é um link

Exemplos: lrwxrwxrwx , -rw-------, drwxr-xr-xr-x

lrwxrwxrwx 1 root root Neste caso onde tem o numero 1, se for um arquivo, sempre será 1, se for um diretorio, podemos ter outros numeros (3, 6 ou 125 etc)  que significa a quantidade de objetos.

Comando para visualizar um objeto oculto.

* ls -a (lista todos os arquivos, mesmo que esteja oculto)

Se quiser ver os diretorios,

* ls -la<br></br>

Para ver os volumes em Kb, Mb Gb etc

* ls -lh

------------------------------------------------

### Localizando arquivos

* ls /sys/kernel/n*

Localizando um arquivo onde não sei onde ele está.

* find -name --> busca a partir do local de onde se esta.

* find -name arq*

```text

./manuserver/arquivo2.txt
./manuserver/arquivo5.txt
./manuserver/arquivo1.txt
./manuserver/arquivo3.txt
./manuserver/arquivo4.txt
```

./ Mostra que a pasta manuserver esta a partir do local de onde se esta.

Busca a partir da raiz (Pode ser que exista pasta onde o user não tenha permissão para buscar)<br></br>

----------------------------------------------

### Criando diretorios

* mkdir nomediretorio

mkdir /home/manuserver/Planilhas/Escolares

### Para criar um diretorio com espaços (Meus Documentos), utilizo as aspas simples "'"

* mkdir 'Meus Documentos'

### Criando dois diretorios.

* mkdir Documentos Planilhas<br></br>

----------------------------------------------

### Excluindo arquivos e diretorios quando não tem conteudo(arquivos).

* rmdir nomedodiretorio

### Para excluir um diretorio onde já existam arquivos, devo excluir primeiramente os aruivos e depois o diretorio.

Excluindo arquivos.

rm nomedoarquivo<br></br>

### Excluindo varios arquivos

rm aruivo* --> exclui todos arquivos que comecem com arquivo

rm *.txt --> exclui todos os aruivos que possuem a extensão .txt

No caso do Ubunto não é perguntado se deseja realmente excluir o arquivo. Já no Fedora, a pergunta é feita.

* Obs: Não posso excluir um diretorio estando dentro dele.<br></br>

### Exluindo mais de um diretorio.

rmdir Escolares Financeiras

Excluindo com descrição do passo a passo do que esta acontencendo

Comando verbose<br></br>

* rm -rfv (v de verbose)


### Excluindo diretorios com arquivos

* rm + atributo

* rm -r (r de recursivo)

* rm -rf (f de forçar)

## Removendo arquivos, mas com o questionamento se realmente deseja remover.

* rm -rfvi<br></br>

----------------------------------------------

## Obtendo ajuda


* comando --help

Exemplo: ls --help


## Comando man (Da uma ajuda no formato de artigo texto)

* man nomedocomando

exemplo man ls

Outro comando de ajuda
Help nomedocomando

* cd --help<br></br>

---

## Executando tarefas administrativas como root

visualizar conteudo de texto
* cat /caminho/

cat /etc/sudoers (Aqui estão as configurações da utilização do comando sudo)<br></br>

-----------------------------------------
### Logando com o usuario root

* sudo passwd root (pede para criar a senha)

Para entrar com root
basta apenas digitar "su"

vai ficar assim: root@servidormanu:/#

Obs: Quando no final aparece $ significa que estou logado com usuario convencional, e quando aparece # significa que estou logado como "root"

Voltar para o usuario convencional
* su manuserver<br></br>

-----------------------------------------

### Liberando acesso remoto do usuário root

sshd - serviço de acesso remoto.

cat /etc/ssh/sshd_config

Para abrir o arquivo para edição (nano)

* nano /etc/ssh/sshd_config

Obs: deve estar logado como root ou usar no início o comando sudo

Altera-se a linha ==> #PermitRootLogin prohibit-password ==> para PermitRootLogin yes, e deve-se rebootar o sistema ou restarto o serviço sshd

* sysemctl status sshd

* systemctl restart sshd<br></br>
-----------------------------------------

### Trabalhando com arquivos de texto

## vi

* vi leia-me.txt (se este arquivo não existir, ele vai ser criado cono new)

Para entrar em modo de edição, teclo a letra "i"
Para sair do modo de inserção uso a tecla Escolares
Para ir para o menu, uso a tecla : , onde vou inserir o comando para salvar e sair. Fica assim ==>  :wq


## nano

* nano leia-me.txt (já abre no modo de edição), ele mostro o menu com as teclas a ser usadas, quando realizar a alteração, ele pergunta se deseja usar o mesmo nome.

* Ctrl + x para sair
* Ctrl + o para salvar

## Criar arquivo

* nano novo-texto.txt ==> ele verifica que não exite, ele mostra New File<br></br>

------------------------------------------------

## Historico de comandos utilizados

comando "history" este comando armazena os ultimos 1000 comandos utilizados.

### Para visualiar apenas uma quantidade de comandos

* history 30, vai mostrar os ultimos 30 comandos.

### Para reaproveitar o comando

* !303 neste caso o 303 era o comando clear

Para reaproveitar o ultimo comando utilizados
* !!

### Fazer uma busca por um determinado termo

* !?dat? buscou o comando date

### Consultar um diretorio se alguem apagou, listou ou criou algum arquivo neste diretorio.

* history | grep "Textos"

* history | grep "ls"

### Para saber a data e hora que o comando foi utilizado

Sempre que for alterar variaveis de ambientes uso o comando

* export (nome da variavel de ambiente em maiusculo)

Para ser um execução completa utiliza-se "%c "

Exemplo:  export HISTTIMEFORMAT="%c "

* %d: Day
* %m: Month
* %y: Year
* %H: Hour
* %M: Minutes
* %S: Seconds
* %F: Full date(Y-M-D format)
* %T: Time(H:M:S format)


### Para apagar todos os historicos

* history -c<br></br>

Trocando de usuario para root e depois voltando para o usuario convencional, o vemos que o historico não foi excluido.
Por segurança o historio não foi excluido

Se quero usar um comando e não quero que ele seja salvo. Tenho que trocar não a variavel de ambiente, mas o parametro do bash terminal

* comando set

Para desativar o history

* set +o history

### Para voltar que os comandos sejam armazenados

* set -o history<br></br>

### Alterando para que o comando history armazene apenas uma quantidade de historicos.

A pasta do usuario os arquivos são ocultos, e para acessar utiliza-se o comando

* ls -a

O arquivo de configuração é o .bashrc

### Para visualizar

* cat .bashrc

    HISTSIZE=1000

### Para gerar um arquivo para visualizar os comandos utilizados

* history -w

### Especificando o tamanho da lista do comando acima

    HISTFILESIZE=2000  tamanho em bytes



























