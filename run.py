from flask import Flask
from app.views import index

# Creación de la instancia de Flask
app = Flask(__name__)

# Asociación de rutas con vistas
@app.route('/nombre-ruta', methods=['GET'])
def nombre_de_la_funcion():
    return index()  # Llama a la función index desde el módulo app.views

# Punto de entrada para ejecutar la aplicación
if __name__ == '__main__':
    app.run(debug=True)
