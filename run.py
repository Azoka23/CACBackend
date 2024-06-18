from flask import Flask
from app.views import index, get_all_usuarios, create_usuario, get_usuario, update_usuario, delete_usuario
from app.database import init_app  # Asegúrate de importar init_app desde el módulo correcto

# Creación de la instancia de Flask
app = Flask(__name__)

# Inicialización de la aplicación con manejo de base de datos
init_app(app)

# Asociación de rutas con vistas usando decoradores
@app.route('/api/usuarios/', methods=['GET'])
def get_all_users():
    return get_all_usuarios()

@app.route('/api/usuarios/', methods=['POST'])
def create_user():
    return create_usuario()

@app.route('/api/usuarios/<int:usuario_id>', methods=['GET'])
def get_user(usuario_id):
    return get_usuario(usuario_id)

@app.route('/api/usuarios/<int:usuario_id>', methods=['PUT'])
def update_user(usuario_id):
    return update_usuario(usuario_id)

@app.route('/api/usuarios/<int:usuario_id>', methods=['DELETE'])
def delete_user(usuario_id):
    return delete_usuario(usuario_id)

# Punto de entrada para ejecutar la aplicación
if __name__ == '__main__':
    app.run(debug=True)
