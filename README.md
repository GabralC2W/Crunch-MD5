Gabral - Crunch-MD5

Cria wordlist com hash MD5 usando : como delimitador
(precisa do crunch para funcionar [sudo apt install crunch])
Desenvolvido para criar listas semelhantes a rainbow tables

Uso: ./crunchmd5.sh <min> <max> [opções] [saída]
Ex: ./crunchmd5.sh 8 10 0123456789 table.txt

Exemplo de saída: Gabral : 7847de5b7cd5e5fe8527b4da2db7c7f6

A saída que o script retorna é a saída do crunch (valores incorretos).
O valor real é diferente devido à adição da hash MD5 (35 bytes p/ linha)
O valor correto fica sendo as linhas de saída * 35 + os bytes de saída
Formula correta: [linhas] * 35 + [bytes]
___________________________________________________________

Para buscar a hash em uma table existente, use 0 0 0

Uso: ./crunchmd5.sh 0 0 0 [hash] [lista]
Ex: ./crunchmd5.sh 0 0 0 7847de5b7cd5e5fe8527b4da2db7c7f6 table.txt
Se a hash não for enconrada, o script fecha sem retorno.
