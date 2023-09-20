#!/usr/bin/bash

# Este script cria quatro usuários no sistema: guest1, guest2, guest3 e guest4.
echo 'Criando os Usuários: guest1, guest2, guest3, guest4'

# Criação do usuário guest1
useradd guest1 -c 'Convidado 1' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest1 -e

# Criação do usuário guest2
useradd guest2 -c 'Convidado 2' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest2 -e

# Criação do usuário guest3
useradd guest3 -c 'Convidado 3' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest3 -e

# Criação do usuário guest4
useradd guest4 -c 'Convidado 4' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest4 -e

# Indica a conclusão da criação dos usuários.
echo 'Concluído'
