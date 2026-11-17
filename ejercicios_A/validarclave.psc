Algoritmo  Validarcontraseña
    Definir clave Como Caracter
    
    Escribir "Crea una contraseña (mínimo 8 caracteres):"
    Leer clave
    
    Si Longitud(clave) >= 8 Entonces
        Escribir "¡Contraseña válida! Cumple con la longitud mínima de seguridad."
    Sino
        Escribir "Contraseña muy corta. Debe tener al menos 8 caracteres (actualmente tiene ", Longitud(clave), ")."
    FinSi
FinAlgoritmo
