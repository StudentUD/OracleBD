# TALLER No 3

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


## Pasos

- source env/bin/activate
- export FLASK_APP="run.py"
- python run.py

## Referencias

- https://youtu.be/IgCfZkR8wME
- https://www.geeksforgeeks.org/oracle-database-connection-in-python/amp/
- https://flask.palletsprojects.com/en/1.1.x/patterns/templateinheritance/