# Zmodyfikuj poprzedni program - loremipsum
# Dodaj możliwość specyfikacji opcji za pomocą getopt

# Np. 
# $ loremipsum -t <paragraphs|sentences> -n <number>

# $ loremipsum --type sentences --number 5 
# ^ stworzy plik z 5 akapitami

# Zbuduj jak najmocniejszy error checking argumentów.
# Np. max 2 argumenty, number zawierajający się pomiędzy 1 a 25 
# dopuszczalne dla opcji --type _wyłącznie_ stringi paragraphs lub sentences
