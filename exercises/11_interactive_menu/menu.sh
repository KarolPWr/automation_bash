#!/bin/bash

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
            echo "Current date and time: $(date)"
            ;;
        2)
            echo "Files in the current directory:"
            ls -l
            ;;
        3)
            echo "Disk usage:"
            df -h
            ;;
        4)
            echo "Free memory:"
            free -h
            ;;
        5)
            echo "Exiting the script. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option, please try again."
            ;;
    esac

    echo -n "Press Enter to continue..."
    read