Funcion dato_precio <- pedir_precio
    Escribir "Digite el precio del producto"
    Leer dato_precio
FinFuncion
Funcion dato_cantidad <- pedir_cantidad
    Escribir "Digite la cantidad del producto"
    Leer dato_cantidad
FinFuncion
Funcion dato_total <- calculartotal(dato_precio, dato_cantidad)
    dato_total <- dato_precio * dato_cantidad
FinFuncion
Funcion dato_iva <- calculariva(dato_total)
    dato_iva <- dato_total * 0.19
FinFuncion
Funcion dato_totaliva <- calculartotaliva(dato_total, dato_iva)
    dato_totaliva <- dato_total + dato_iva
FinFuncion
Funcion dato_mensaje1 <- hacermensaje1(dato_total)
    dato_mensaje1 <- "El total de su compra fue de: " + ConvertirATexto(dato_total)
FinFuncion
Funcion imprimirmensaje1(dato_mensaje1)
    Escribir dato_mensaje1
FinFuncion
Funcion dato_mensaje2 <- hacermensaje2(dato_iva)
    dato_mensaje2 <- "El impuesto aplicado (IVA) es de: " + ConvertirATexto(dato_iva)
FinFuncion
Funcion imprimirmensaje2(dato_mensaje2)
    Escribir dato_mensaje2
FinFuncion
Funcion dato_mensaje <- hacermensaje(dato_totaliva)
    dato_mensaje <- "El total con impuesto aplicado es de: " + ConvertirATexto(dato_totaliva)
FinFuncion
Funcion imprimirmensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion
Proceso PrecioxCantidad
    Definir precio, cantidad, iva, totalsiniva, total Como Real
    Definir dato_mensaje1, dato_mensaje2, dato_mensaje Como Caracter
    dato_precio <- pedir_precio
    dato_cantidad <- pedir_cantidad
    totalsiniva <- calculartotal(dato_precio, dato_cantidad)
    dato_mensaje1 <- hacermensaje1(totalsiniva)
    imprimirmensaje1(dato_mensaje1)
    iva <- calculariva(totalsiniva)
    dato_mensaje2 <- hacermensaje2(iva)
    imprimirmensaje2(dato_mensaje2)
    total <- calculartotaliva(totalsiniva, iva)
    dato_mensaje <- hacermensaje(total)
    imprimirmensaje(dato_mensaje)
FinProceso