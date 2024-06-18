from flask import Flask
from app.views import index, get_all_usuarios, create_usuario, get_usuario, update_usuario, delete_usuario
from app.views import init_app
# Creación de la instancia de Flask
app = Flask(__name__)

init_app(app)

# Asociación de rutas con vistas
#@app.route('/nombre-ruta', methods=['GET'])
#def nombre_de_la_funcion():
    #return index()  # Llama a la función index desde el módulo app.views
app.route('/api/usuarios/', methods=['GET'])(get_all_usuarios)
app.route('/api/usuarios/', methods=['POST'])(create_usuario)
app.route('/api/usuarios/<int:usuario_id>', methods=['GET'])(get_usuario)
app.route('/api/usuarios/<int:usuario_id>', methods=['PUT'])(update_usuario)
app.route('/api/usuarios/<int:usuario_id>', methods=['DELETE'])(delete_usuario)


# Punto de entrada para ejecutar la aplicación
if __name__ == '__main__':
    app.run(debug=True)
