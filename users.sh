#!/usr/bin/bash

echo 'Criando os Usuários: guest1, guest2, guest3, guest4'

useradd guest1 -c 'Convidado 1' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest1 -e

useradd guest2 -c 'Convidado 2' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest2 -e

useradd guest3 -c 'Convidado 3' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest3 -e

useradd guest4 -c 'Convidado 4' -s /usr/bin/bash -m -p $(openssl passwd -crypt senha123)
passwd guest4 -e

echo 'Concluído'