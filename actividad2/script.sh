printf "Ingresa tu usuario de Github: "
#Leer variable
read GITHUB_USER
#consular url
info=$(curl "https://api.github.com/users/${GITHUB_USER}")
#impresion mensaje
printf "Hola $(echo "$info" | jq '.login'). User ID: $(echo "$info" | jq '.id'). Cuenta fue creada el: $(echo "$info" | jq '.created_at')." 

# Crear el archivo de log en /tmp/<fecha>/saludos.log
date=$(date '+%Y-%m-%d')
mkdir -p "/tmp/$date"
echo "Hola $(echo "$info" | jq '.login'). User ID: $(echo "$info" | jq '.id'). Cuenta fue creada el: $(echo "$info" | jq '.created_at')." > "/tmp/$date/saludos.log"

