echo "=== Contenedor en ejecución ==="
echo "Hostname del contenedor: $(hostname)"

echo "Usuarios en el contenedor:"
whoami

echo "=== Recursos del contenedor ==="
echo "Memoria disponible:"
free -h

echo "Uso de CPU:"
top -bn1 | head -n 10

echo "=== Comunicación con host ==="
echo "Ping al host (localhost 127.0.0.1):"
ping -c 3 127.0.0.1
