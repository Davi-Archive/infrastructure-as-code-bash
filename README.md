# Script de Maquinas virtuais
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/d1av/vm-clusters-setup-vagrant/blob/main/LICENSE) 

# Sobre o projeto

O Script de Maquinas virtuais é uma aplicação de terminal para criação de servidores em Linux ubuntu 22.04 com apache2 e docker pré instalaods, para a execução e testes dos containers em nuvem antes de hospedar na AWS.

A aplicação consiste de um script capas de criar diversos containers em varios nodos, para garantir performace e  estabilidade do aplicativo, e que o mesmo seja escalável para quando for requisitado.

# Modelo de Hospedagem

![aeb-multicontainer-docker-example](https://user-images.githubusercontent.com/107776531/204908436-a5cb67f8-4976-4fb4-9954-70aa8800eb99.png)


## Virtual Machine
![vagrant](https://user-images.githubusercontent.com/107776531/204906799-63411aff-3426-4182-9ff2-ad727d2d8727.png)

# Tecnologias utilizadas

- Ubuntu 22.04 Server
- Bash
- Oracle Virtual Box
- Docker
- Swarm


# Como executar o projeto

## Pré-requisitos:

- Ter instalado um sistema de virtualização como Oracle Virtual Box.
- Vagrant

```bash
# clonar repositório
git clone https://github.com/d1av/vm-clusters-setup-vagrant.git

# entrar na pasta do projeto

# executar o projeto
vagrant up
```

# Autor

Davi Alves de Oliveira

https://www.linkedin.com/in/d1av/
