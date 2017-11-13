# Scrivere una funzione che accetta in ingresso un array
# di interi e restituisce in uscita la somma degli elementi
# dell'array
def sum(array)
  array.reduce 0, :+
end

# sum [1, 3, "pippo", 42, nil] 
