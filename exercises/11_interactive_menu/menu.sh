#!/bin/bash


# Dopisz brakującą logikę do skryptu implementującego “wieczne” menu 

# Pętla while
# Read na user input 
# Odpowiednie logowanie/ powiadomienia dla usera


# Function to display the menu
show_menu() {
    echo "----------------------------------"
    echo "           MAIN MENU              "
    echo "----------------------------------"
    echo "1) Show current date and time"
    echo "2) List files in the current directory"
    echo "3) Show disk usage"
    echo "4) Display free memory"
    echo "5) Exit"
    echo "----------------------------------"
    echo -n "Please enter your choice [1-5]: "
}


    show_menu

    case $choice in
        1)
            date
            ;;
        2)
            ls -l
            ;;
        3)
            df -h
            ;;
        4)
            free -h
            ;;
        5)
            break
            ;;
        *)
            ;;
    esac

    echo -n "Press Enter to continue..."
    read