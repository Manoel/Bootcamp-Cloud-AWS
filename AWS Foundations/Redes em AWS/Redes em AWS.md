# Redes em AWS

### Amazon VPC

* VPC: Virtual Private Cloud
* Permite contruir e configurar redes virtuais na AWS
* Sub-redes: privadas e públicas
* "Tudo começa dentro de um VPC" 

# Conectividade com a AWS

### Gateway da internet

* Um gateway da internet é uma conexão entre uma VPC e a internet.

### Gateway privado virtual

* O gateway privado virtual é o componente que permite que o tráfego protegido da internet ingresse na VPC.
* Um gateway privado virtual permitirá o tráfego na VPC somente se ele for proveniente de uma rede aprovada.

### AWS Direct Connect

* O AWS Direct Connect é um serviço que permite estabelecer uma conexão privada dedicada entre seu data center e uma VPC.
* A conexão privada que o AWS Direct Connect fornece ajuda você a reduzir os custos de rede e a aumentar a quantidade de largura de banda que pode trafegar pela sua rede.


# Sub-redes e listas de controle de acesso

* Com os grupos de segurança você determina o permissionamento de um fluxo de entrada específico e, por padrão, todo fluxo de retorno é permitido.

* A principal diferença entre um grupo de segurança e uma netwok ACL é que o grupo de segurança é Stateful, o que quer dizer, como a gente tinha falado antes, que ele tem uma espécie de memória quando se trata de permitir a entrada ou saída, e o network ACL é Stateless, ou seja, ele não se lembra de nada e verifica cada pacote que cruza sua fronteira, independentemente da situação.

* Toda sub-rede, seja ela pública ou privada tem na frente dela um Network ACL

### Lista de controle de acesso (Network ACL) de rede 

* É um firewall virtual que controla o tráfego de entrada e saída no nível de sub-rede.
* Comportamento Stateless
* Por padrão, permite todo tráfego de entrada e saída

### Grupos de segurança

* Um grupo de segurança é um firewall virtual que controla o tráfego de entrada e saída de uma instância do Amazon EC2.
* Por padrão, um grupo de segurança nega todo o tráfego de entrada e permite todo o tráfego de saída. (Stateful)