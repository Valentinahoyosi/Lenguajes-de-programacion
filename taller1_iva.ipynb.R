#Datos del negocio

nombre_negocio <- "Papelería El Recibo"
nit <- "900.123-4"
numero_factura <- 1005
tarifa_iva <- 0.19

cat("Bienvenido al sistema de facturación de", nombre_negocio, "\n")
cat("NIT:", nit, "\n")
cat("Número de factura:", numero_factura, "\n")
cat("Tarifa IVA:", tarifa_iva, "\n")

#Datos de entrada

cliente <- readline("Ingrese el nombre del cliente: ")
producto <- readline("Ingrese el producto: ")
cantidad <- readline("Ingrese la cantidad que te dictan: ")
valor_unitario <- readline("Ingrese el valor unitario: ")
total_competencia <- readline("Ingrese cuánto cuesta el producto en la competencia: ")

#Conversión de tipos

cantidad <- as.numeric(cantidad)
valor_unitario <- as.numeric(valor_unitario)
total_competencia <- as.numeric(total_competencia)

class(cantidad)

#Cálculos del proceso

subtotal <- cantidad * valor_unitario
iva <- subtotal * tarifa_iva
total <- subtotal + iva
ahorro <- total_competencia - total

#Salida de la factura

#Bloque de resultados

cat("==============================\n")
cat("Negocio:", nombre_negocio, "\n")
cat("NIT:", nit, "\n")
cat("Número de factura:", numero_factura, "\n")
cat("------------------------------\n")
cat("Cliente:", cliente, "\n")
cat("Producto:", producto, "\n")
cat("Cantidad:", cantidad, "\n")
cat("Subtotal:", subtotal, "\n")
cat("IVA:", iva, "\n")
cat("TOTAL A PAGAR:", total, "\n")
cat("Ahorro frente a la competencia:", ahorro, "\n")
cat("==============================\n")

#Cierre de caja

venta2 <- as.numeric(readline("Ingrese la segunda venta del día: "))
venta3 <- as.numeric(readline("Ingrese la tercera venta del día: "))
total_dia <- total + venta2 + venta3
promedio_dia <- (total_dia) / 3

cat("==============================\n")
cat("RESUMEN DEL DÍA\n")
cat("Total vendido en el día:", total_dia, "\n")
cat("Promedio por venta:", promedio_dia, "\n")
cat("==============================\n")

