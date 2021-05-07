#!/usr/bin/bash

archivo=grepdata.txt
RED='\033[1;30;47m'
GREEN='\033[3;32;40m'
NC='\033[0m' #No Color

echo -e ${GREEN} "Asgino archivo=grepdata.txt" ${NC} 
archivo=grepdata.txt

echo -e ${RED}"Muestra Todas Las Líneas Que Contengan Un Número De Teléfono Con Una Extensión (la letra x o X seguida de cuatro dígitos)" ${NC}
grep -E [xX][0-9]{4} $archivo 
echo -e ${RED}"Muestra Las Lineas Que Contienen Tres Caracteres Seguidos De Un Espacio" ${NC}
grep -E ^[A-Za-z0-9]{3}[[:blank:]] $archivo 
echo -e ${RED}"Muestra Las Lines Que Contienen Fechas Con Formato 0-0-000, 00-00-0000, 0-0-0000, aaa-0- 0000, aaa- 0- 0000, 0-00-0000, 00-0-0000" ${NC}
grep -E -i "([a-z]|[0-9]){1,3}([[:punct:]])([[:space:]]|[0-9]){1,3}([[:punct:]]|[[:blank:]]){1,2}([2]{1}[0-9]{1,3})" $archivo 
echo -e ${RED}"Muestra Las Palabras Que Contienen Una Vocal Seguida De Otro Caracter Seguida De La Misma Vocal (eve, ada)" ${NC} 
grep -E "([a].[a])|([e].[e])|([i].[i])|([o].[o])|([u].[u])" $archivo 
echo -e ${RED} "Muestra Todas Las Palabras Que No Comienzan Con S" ${NC} 
grep ^[^S] $archivo 
echo -e ${RED}"Muestra Todas Las Lineas Que Contienen Un Correo" ${NC} 
grep -E "[A-Za-z0-9]{1,}@[A-Za-z0-9]{1,7}[[:punct:]][a-z]{1,3}" $archivo 
