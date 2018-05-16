#!/bin/bash
if [ -z $1 ]; then
echo 
echo "Gabral - Crunch MD5"
echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
echo "Cria wordlist com hash MD5 usando : como delimitador"
echo "(precisa do crunch para funcionar [sudo apt install crunch])"
echo "Desenvolvido para criar listas semelhantes a rainbow tables"
echo 
echo "Uso: $0 <min> <max> [opções] [saída]"
echo "Ex: $0 8 10 0123456789 table.txt"
echo 
echo "Exemplo de saída: Gabral : 7847de5b7cd5e5fe8527b4da2db7c7f6"
echo 
echo "A saída que o script retorna é a saída do crunch (valores incorretos)."
echo "O valor real é diferente devido à adição da hash MD5 (35 bytes p/ linha)"
echo "O valor correto fica sendo as linhas de saída * 35 + os bytes de saída"
echo "Formula correta: [linhas] * 35 + [bytes]"
echo "___________________________________________________________"
echo 
echo "Para buscar a hash em uma table existente, use 0 0 0"
echo 
echo "Uso: $0 0 0 0 [hash] [lista]"
echo "Ex: $0 0 0 0 7847de5b7cd5e5fe8527b4da2db7c7f6 table.txt"
echo "Se a hash não for enconrada, o script fecha sem retorno."
echo 
else
if [ $1 == "0" ]; then
if [ $2 == "0" ]; then
if [ $3 == "0" ]; then
cat $5 | grep "$4"
exit
fi
fi
fi
if [ -z $4 ]; then
for i in $(crunch $1 $2 $3);do echo -n "$i : "; echo $i | md5sum | cut -d " " -f1 ; done
else
echo -n > $4 ; for i in $(crunch $1 $2 $3);do echo -n "$i : " >> $4 ; echo $i | md5sum | cut -d " " -f1 >> $4 ; done
fi
fi
