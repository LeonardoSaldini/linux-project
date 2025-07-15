#!/bin/bash

echo "Criando usu[arios teste do scripto"

useradd guest -c "Convidado teste scripto" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest -e

useradd guest2 -c "Convidado teste scripto" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest2 -e

useradd guest3 -c "Convidado teste scripto" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest3 -e

echo "Finalizado"
