# Título: Recorta imágenes en porciones mas pequeñas
# Fecha: 24/10/2022
# Autor: Xavi García (ElCiberProfe)
# Lenguaje: PowerShell
# Probado en: Windows PowerShell v5.1

##################################
#                                #
# CONTENIDO CON FINES EDUCATIVOS #
#                                #
##################################

#1. Realiza un FORK del proyecto en tu GITHUB y clona el repositorio a tu ordenador local
#2. Mejora el SCRIPT para que detecte el ancho y alto de la imagen y realice los recortes adecuados
#3. Mejora el SCRIPT para que pida al usuario el número de filas y columnas a recortar y el nombre de la imagen

$imagen  = New-Object System.Drawing.Bitmap(".\onepiece.jpg")
$filas = 5
$columnas = 3
$contadorImagenes = 1

for ($i=0; $i -lt $filas; $i++) {
    for ($j=0; $j -lt $columnas; $j++) {
        $x = $j * 160
        $y = $i * 160
        $ventana = New-Object System.Drawing.Rectangle($x,$y,160,160)
        $recorte = $imagen.Clone($ventana, $imagen.PixelFormat)
        $recorte.Save(".\recortes\$contadorImagenes.jpg")
        $contadorImagenes++
    }
}
