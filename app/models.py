from datetime import datetime
from app.database import get_db

class Usuario:
    def __init__(self, id_usuario=None, apellido=None, nombre=None, fecha_nacimiento=None, documento=None, telefono=None, email=None, pais_origen=None, password=None):
        self.id_usuario = id_usuario
        self.apellido = apellido
        self.nombre = nombre
        self.fecha_nacimiento = fecha_nacimiento  # Esperamos un string en formato 'YYYY-MM-DD'
        self.documento = documento
        self.telefono = telefono
        self.email = email
        self.pais_origen = pais_origen
        self.password = password

    # Método para borrar un usuario
    def delete(self):
        db = get_db()
        cursor = db.cursor()
        cursor.execute("DELETE FROM usuarios WHERE id_usuario = %s", (self.id_usuario,))
        db.commit()
        cursor.close()

    # Método para buscar un usuario
    @staticmethod
    def get_by_id(usuario_id):
        db = get_db()
        cursor = db.cursor()
        cursor.execute("SELECT * FROM usuarios WHERE id_usuario = %s", (usuario_id,))
        row = cursor.fetchone()
        cursor.close()
        if row:
            return Usuario(id_usuario=row[0], apellido=row[1], nombre=row[2], fecha_nacimiento=row[3], documento=row[4], telefono=row[5], email=row[6], pais_origen=row[7], password=row[8])
        return None

    # Método para listar todos los usuarios
    @staticmethod
    def get_all():
        db = get_db()
        cursor = db.cursor()
        cursor.execute("SELECT * FROM usuarios")
        rows = cursor.fetchall()
        usuarios = [Usuario(id_usuario=row[0], apellido=row[1], nombre=row[2], fecha_nacimiento=row[3], documento=row[4], telefono=row[5], email=row[6], pais_origen=row[7], password=row[8]) for row in rows]
        cursor.close()
        return usuarios

    # Método para guardar (crear/actualizar) un usuario
    def save(self):
        db = get_db()
        cursor = db.cursor()
        if self.id_usuario:
            cursor.execute("""
                UPDATE usuarios SET apellido = %s, nombre = %s, fecha_nacimiento = %s, documento = %s, telefono = %s, email = %s, pais_origen = %s, password = %s
                WHERE id_usuario = %s
            """, (self.apellido, self.nombre, self.fecha_nacimiento, self.documento, self.telefono, self.email, self.pais_origen, self.password, self.id_usuario))
        else:
            cursor.execute("""
                INSERT INTO usuarios (apellido, nombre, fecha_nacimiento, documento, telefono, email, pais_origen, password) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            """, (self.apellido, self.nombre, self.fecha_nacimiento, self.documento, self.telefono, self.email, self.pais_origen, self.password))
            self.id_usuario = cursor.lastrowid
        db.commit()
