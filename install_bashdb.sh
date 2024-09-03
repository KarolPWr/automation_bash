Źródła:





Instrukcja:

git clone https://git.savannah.gnu.org/git/bash.git
cd bash

./configure --enable-debugger

make

--- Sprawdzić wygenerowane pliki ---

Testowanie:
bash --debugger script.sh


--- Bashdb ---
Źródło: readme w https://github.com/rocky/bashdb 
wget https://sourceforge.net/projects/bashdb/files/bashdb/5.0-1.1.2/bashdb-5.0-1.1.2.tar.gz/download

tar -xvf download

cd bashdb-5.0-1.1.2/

./configure

make && make check