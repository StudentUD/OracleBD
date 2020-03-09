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

#- ## Ejecutar por primera vez  o despues de adicion de paquetes 
Si se acaba de clonar el repositorio se debe instalar las dependencias del proyecto, o si indica error 

- Activar variable ```source venv-project/bin/activate ```
- Instalar dependencias ```pip3 install -r requirements.txt ```

# Creacion de base de datos

para ver la conexion atual ```SHOW CON_NAME```

Cremos nuestro usuario ```CREATE USER app IDENTIFIED BY "flask";``` si nosindica error ***ORA-65096:*** entonces 

En oracle a partir de la version 12c se epieza aimplemnetar una serie de cambiso e n la arquitectura de la bases de datos, una de llas es la implemnracion de las plugables dabases 

- para ver nuestar base de datos contenedor CBD ```select name,open_mode, cdb from v$database;``` debera mostrarnos **XE** si es express
- para ver las bd plugable conectados es plugbales en sqlplus indicamos ```show pdbs;``` aqui nos mostrara **xepdb1** enm modo read write lo cual indica que la podemos utilizar 
- procedemos a cambiar de base de datos ``` ALTER SESSION SET CONTAINER=xepdb1; ```
- reinteamos crear nuestro usuario ```CREATE USER app IDENTIFIED BY "flask";```

 Estos de debn acambiar 

- por ultimo le damos los permisos correspondientes ``` GRANT ALL PRIVILEGES TO app;```

Es importate saber el nombre del servicio donde vamos a usar nuestra BD ```SELECT SYS_CONTEXT('USERENV', 'CON_ID') AS con_id, SYS_CONTEXT('USERENV', 'SERVICE_NAME') AS service_name FROM   dual;```
nos mostrar el  servicio que debemos utilizar
- host puede ser el nombre del equipo o ip 
- xepdb1 es el nombre del servicio 

vamos a modificar nuestro tnsnames de aplicacion

<pre><code>
XE =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = think)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = XE)
    )
  )
</pre></code>

- Se recomienda revisar el archvo litenr.ora qu coresponde al servicio de escucha de oracle, modificar por el host correspondinete

``` lsnrctl status``` te permite ver si es listener esta activo 
Si no se encuebtra entonces 

``` lsnrctl start ``` si no carga ir a services.msc


[Ver solucion  adaptador ](http://www.rebellionrider.com/sql-developer-error-the-network-adapter-could-not-establish-the-connection/)


**Se recomienda primero reinciar el oraclelistener y luego oracleService**

##### Cannot locate a 64-bit Oracle Client library
intalcion de client  revisar los link [aqui](https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html)

crear una carpeta especifica 
``` mkdir cliente && cd cliente ```

- basic ``` wget https://download.oracle.com/otn_software/linux/instantclient/19600/instantclient-basic-linux.x64-19.6.0.0.0dbru.zip ``` 
- sql   ``` wget https://download.oracle.com/otn_software/linux/instantclient/19600/instantclient-sqlplus-linux.x64-19.6.0.0.0dbru.zip ```
- sdk   ``` wget https://download.oracle.com/otn_software/linux/instantclient/19600/instantclient-sdk-linux.x64-19.6.0.0.0dbru.zip ```

Descargamos y descomprimimos todos los paquetes

- ```unzip instantclient-basic-linux.x64-19.6.0.0.0dbru.zip ``` 
- ``` unzip instantclient-sqlplus-linux.x64-19.6.0.0.0dbru.zip ```    
- ``` unzip instantclient-sdk-linux.x64-19.6.0.0.0dbru.zip     ```  

Enlas verisones actuales no es necesario crear los enlaces simbolicos 

- ```sudo apt-get install libaio1``` en algunas distros es ```libaio```

Importamos la variable 
```export LD_LIBRARY_PATH=$(pwd)``` Con el fin de poder ejecutar el ./sqlplus, si esta fuera de la carpeta ```export LD_LIBRARY_PATH=~/cliente/instantclient_19_6```

##### TNS listener 
[Tns listener oracle stackoverflow]( https://stackoverflow.com/questions/13358656/oracle-client-ora-12541-tnsno-listener)
1. Editar liter.ora Ubicado en la carpet HOME/network/admin/lister.ora
2. Modificar el listener en HOST=0.0.0.0
3. Reicniar servicio oracleservice*

Si el error persiet entonces modificaremos la conexion tnsnames.ora del cliente
- en el caso perosna opie el mismo que tenia el server y lo pegue en $LD_LIBRARY_PATH/networks/admin/

Por ultimo acceder a sqlplus y ejecutar los scripts que se encuntran en este repositorio /baseDatos

```start direccion_scriptOracle``` y luego lo mismo con postScript

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

