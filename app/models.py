from datetime import datetime

class Usuario:
    def __init__(self, apellido, nombre, fecha_nacimiento, documento, telefono, email, pais_origen, contrasena):
        self.apellido = apellido
        self.nombre = nombre
        self.fecha_nacimiento = fecha_nacimiento  # Esperamos un string en formato 'YYYY-MM-DD'
        self.documento = documento
        self.telefono = telefono
        self.email = email
        self.pais_origen = pais_origen
        self.contrasena = contrasena

    #metodo para...?
    def actualizar_email(self, nuevo_email):
        self.email = nuevo_email

    #metodo para mostrar usuario?
    def mostrar_info(self):
        return (f"Nombre: {self.nombre} {self.apellido}, Fecha de Nacimiento: {self.fecha_nacimiento}, "
                f"Documento: {self.documento}, Teléfono: {self.telefono}, Email: {self.email}, "
                f"País de Origen: {self.pais_origen}")
    
    #metodo para crear un usuario

    #metodo para borrar un usuario

    #metodo para buscar un usuario

    #metodo para listar todos los usuario

    #metodo para actualizar datos de un
    #  usuario primero tiene que buscarlo,
    #luego hacer la modificacion y por ultimo
    #guardarlo