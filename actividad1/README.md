# <center> ACTIVIDAD NO. 1 </center>

# TIPOS DE KERNEL Y SUS DIFERENCIAS
## Microkernels

Es un tipo de kernel similar al modelo de capas, en este modelo solo algunas partes indispensables y fundamentales van en el kernel, de este modo, se evita que en caso de algun fallo se pueda detener el sistema entero, adicionalmente al ejecutar las demas partes en el modo usuario un error no seria tan grave. El principal motivo de este diseño es tener una gran confianza y estabilidad al dividir el Sistema Operativo en modulos pequeños que son manejables de una mejor forma. Algunos ejemplos de este tipo de kernel son los enlistados a continuación: 


- Minix
- QNX
- GNU Hurd
- seL4

## ExoKernels 

Es una arquitectura diseñada para separar la protección de recursos de la administracion para poder facilitar la personalizacion especifica de la aplicación. Este tipo de exokernel son tipicamente pequeños en tamaño debido a que tiene una operatividad limitada. La principal idea es permitir que las aplicaciones tengan un mayor control y acceso directo a los recursos hardware del sistema sin la necesidad de depender del sistema operativo para administrarlos. 

# USER VS KERNEL MODE

En primera instancia, cuando un programa es iniciado en un sistema operativo se ejecutra en el modo user, por lo que, cuando un programa en user mode solicita ejecutarse el sistema operativo crea para el programa un proceso y un espacio de direcciones virtual. Las aplicaciones que se ejecutan por medio del user mode tienen una menor cantidad de privilegios que las aplicaciones de user mode y no pueden acceder de una manera directa a los recursos del sistema. Por otro lado, se encuentra el kernel mode que es un programa central en el que se basan todos los componentes que engloba el sistema operativo, de este modo, este mode se usa para acceder a los componentes de hardware y programar que procesos tienen que ejecutarse en un sistema informatico y en que momento. En conlusión el Kernel mode a diferencia del user mode tiene mas privilegios, puesto que puede interactuar con el hardware de manera directa. 


# INTERRUPTIONS VS TRAPS