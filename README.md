# Taller N3 - Bases de datos
## Empleados DB

- Oscar Bautista
- Diego Hernandez


## Instalación 

- Python 3 
- Instalar pip3 ```sudo apt-get install python3-pip ```

 Como ya hay variable no se requiere crear una variable virtual, para ello  puede pasar  Ejecutar por primera vez  o despues de adicion de paquetes  
- ```sudo apt-get install python3-venv ```

Para la creacion de la variable  de entono 
- ``` python3 -m venv venv-project ```

Al haber creado, ingreso a la va variable de entono 

- ```source venv-project/bin/activate ```
cada vez que se instale una libreria requiere 

- Hacer copia de paquetes instalados ```pip3 freeze > requirements.txt ```
- ver paquetes ```pip3 lsit ```


### Ejecutar por primera vez  o despues de adicion de paquetes 
Si se acaba de clonar el repositorio se debe instalar las dependencias del proyecto, o si indica error 

- Activar variable ```source venv-project/bin/activate ```
- Instalar dependencias ```pip3 install -r requirements.txt ```

# Arrancar proyecto Flask 
. Activar variable 
- ```export FLASK_APP="run.py" ```
- ```python run.py ```



# Descripcion 

## Requerimientos
De acuerdo al modelo correspondiente de Empleado que estamos manejando en clases y de
acuerdo a los casos de uso:

- Representante de Ventas: Empleado que solo puede generar órdenes
- Administrador de Bodega: Empleado que puede gestionar las bodegas y los 
    inventarios de la región a la que pertenece.
- Vicepresidente de Recursos Humanos: Gestionar Empleados y nómina.
- Administrador de Usuario: (Usted) quien puede gestionar (asignar y desasignar) los
roles previamente definidos.

Ustedes deben crear una interfaz totalmente gráfica que permita registrarse como
“Administrador de usuario”, consultar los empleados existentes y asignarles uno de los roles
definidos previamente.

Tenga en cuenta que cada rol solo puede hacer lo definido y si es necesario investigar para
cumplir el objetivo lo deben hacer.

## Referencias

- https://youtu.be/IgCfZkR8wME
- https://www.geeksforgeeks.org/oracle-database-connection-in-python/amp/
- https://flask.palletsprojects.com/en/1.1.x/patterns/templateinheritance/