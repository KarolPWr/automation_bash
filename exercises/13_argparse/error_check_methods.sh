# Referencja - sprawdzanie argumentów

if [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Argument zawiera tylko cyfry"
fi

if [[ "$1" =~ ^[a-zA-Z]+$ ]]; then
    echo "Argument zawiera tylko litery"
fi

if [ "$1" == "user" ]; then
    echo "Argumentem może być tylko user "
fi

if [ $# -eq 0 ]; then
    echo "Brak argumentów, exit"
    exit 1
fi

if [ ! -d "$1" ]; then
  echo "$1 nie jest jest istniejącą ścieżką"
fi

