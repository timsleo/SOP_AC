#!/bin/bash

display_header() {
    clear
    echo "###############################################################"
    echo "# IBMEC                                                       #"
    echo "# Sistemas Operacionais           Semestre 2 de $(date +'%Y') #"
    echo "# Código: IBM8940                          Turma: 8001        #"
    echo "# Professor: Luiz Fernando T. de Farias                       #"
    echo "#-------------------------------------------------------------#"
    echo "# Equipe Desenvolvedora:                                      #"
    echo "#   Aluno: Leonardo Tims                                      #"
    echo "#   Aluno: Guilherme Maia                                     #"
    echo "#-------------------------------------------------------------#"
    echo "# Rio de Janeiro, $(date +'%d de %B de %Y')                      #"
    echo "# Hora do Sistema: $(date +'%H Horas e %M Minutos')                    #"
    echo "###############################################################"
    echo
}

option_1() {
    echo "Você escolheu a Opção 1: Listar diretório"
    read -p "Digite o caminho do diretório que deseja listar: " dir
    ls "$dir"
}

option_2() {
    echo "Você escolheu a Opção 2!"
    read -p "Digite um nome para criar um arquivo: " nome_arquivo
    touch $nome_arquivo
    echo "Arquivo $nome_arquivo criado com sucesso!"
}

option_3() {
    echo "Você escolheu a Opção 3: Exibir informações do sistema"
    uname -a
}

option_4() {
    echo "Você escolheu a Opção 4: Exibir processos do usuário"
    read -p "Digite o nome do usuário: " user
    ps -u "$user"
}

while true; do
    display_header
    echo "Menu de Escolhas:"
    echo "  1) Listar um diretório"
    echo "  2) Criar um arquivo"
    echo "  3) Exibir informações do sistema"
    echo "  4) Exibir processos de um usuário específico"
    echo "  5) Finalizar o programa."
    echo
    read -p "Selecione uma opção: " option
    
    case $option in
        1) option_1 ;;
        2) option_2 ;;
        3) option_3 ;;
        4) option_4 ;;
        5) echo "Finalizando o programa..."; exit 0 ;;
        *) echo "Opção inválida. Tente novamente." ;;
    esac
    read -p "Pressione Enter para continuar..." # Pausa antes de voltar ao menu
done
