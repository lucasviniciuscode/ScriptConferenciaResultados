# Escolha do compilador
echo "Escolha o compilador (gcc, g++, python3, etc.):"
read compilador

# Pasta onde os arquivos de entrada estão localizados
pasta_input="entradas"

pasta_output_expected="esperado"

pasta_output="saidas"

# Lista de arquivos na pasta de entrada
arquivos=("$pasta_input"/*)

# Loop através dos arquivos e execute o comando para cada um deles
for arquivo_path in "${arquivos[@]}"; do
  # Extrair o nome do arquivo sem o caminho completo
  arquivo=$(basename "$arquivo_path")
  clear
  case "$compilador" in
    "gcc"|"g++")
      $compilador -o "problema" "problema.c"
      ./problema < "$arquivo_path" > "$pasta_output/$arquivo.txt"
      ;;
    "python3")
      python3 problema.py < "$arquivo_path" > "$pasta_output/$arquivo.txt"
      ;;
    *)
      echo "Compilador não suportado."
      exit 1
      ;;
  esac
done

# Comparar saídas
for arquivo_path in "${arquivos[@]}"; do
  # Extrair o nome do arquivo sem o caminho completo
  arquivo=$(basename "$arquivo_path")
  
  if diff "$pasta_output_expected/$arquivo" "$pasta_output/$arquivo.txt" >/dev/null; then
    echo "$arquivo - certo"
  else
    echo "$arquivo - errado"
  fi
done