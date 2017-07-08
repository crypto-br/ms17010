#!/bin/bash

# Teste MS17-010

#Limpando tela
clear

echo "Informe o ip que deseja verificar !!"
read IP

nmap -sS -p445 --open --max-hostgroup 3 --script='smb-vuln-ms17-010.nse' $IP
