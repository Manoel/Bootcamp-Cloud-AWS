#!/bin/bash

echo "Criando Diretórios (publico, adm, ven e sec)"

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Finalizado criação de diretórios"


echo " "

echo "Criando Grupos de Usuários (GRP_ADM, GRP_VEN e GRP_SEC)"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Finalizado Criação de Grupos"

echo " "

echo "Criando Usuários (carlos, maria, joao) - (debora, sebastiana, roberto) - (josefina, amanda, rogerio)"


useradd carlos -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

echo "Finalizado Criação de Usuários"

echo " "

echo "Adicionando os usuários aos respectivos grupos"




echo "Finalizado!"




root@servidormanu:/scripts# ./iac1.sh
Criando Diretórios (publico, adm, ven e sec)
Finalizado criação de diretórios

Criando Grupos de Usuários (GRP_ADM, GRP_VEN e GRP_SEC)
Finalizado Criação de Grupos

Criando Usuários (carlos, maria, joao) - (debora, sebastiana, roberto) - (josefina, amanda, rogerio)
Finalizado Criação de Usuários

Especificando Permissões aos Donos dos Doretórios
Especificando Permissões aos Grupos e Outros dos Doretórios
Finalizado!
root@servidormanu:/scripts#

