#!/bin/bash


if [[ "$#" -ne 1 ]]; then
    echo "Przekaż jeden argument będący liczbą"
    exit 1
fi


N_CATS=$1

echo "Liczba kotów: $N_CATS"

MOD_N_CATS=$(( N_CATS % 10 ))


if [[ MOD_N_CATS -eq 1 && N_CATS -eq 1 ]]; then
    echo "Ala ma $N_CATS kota"
elif [[ MOD_N_CATS -eq 1 && N_CATS -gt 1 ]]; then 
    echo "Ala ma $N_CATS kotów"
elif [[ MOD_N_CATS -gt 1 && MOD_N_CATS -lt 5 ]]; then
    echo "Ala ma $N_CATS koty"
elif [[ MOD_N_CATS -gt 4 && MOD_N_CATS -lt 10 || MOD_N_CATS -eq 0 ]]; then 
    echo "Ala ma $N_CATS kotów"
fi



# 1 kota
# 2 koty
# 3
# 4
# 5 kotów 
# 21
# 22 koty
# -
# 25 kotów
# 32 koty

# # modulo? 
