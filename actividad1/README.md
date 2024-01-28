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

## Kernel Monolítico

Tipo de Kernel que ejecuta todas las funciones del sistema operativo en espacio de núcleo, por consiguiente, todas las partes del kernel tienen acceso directo a las estructuras y funciones del sistema. Este tipo de Kernel es altamente eficiente en terminos de rendimiento, sin embargo, una falla en el kernel afecta todo el sistema.

## Kernel Hibrido 

Un kernel peculiar que combina caracteristicas de los kernels monolíticos y microkernels, mencionados anteriormente. Algunos de sus servicios se ejecutan en el espacio de nucleo, mientras que otros se implementan como rutinas en el espacio de usuario.

## Kernel Virtualizado

En un sistema virtualizado el kernel se ejecuta en una maquina virtual y no de manera directa en el hardware. Cada maquina virtual puede tener un kernel propio.

# USER VS KERNEL MODE

En primera instancia, cuando un programa es iniciado en un sistema operativo se ejecutra en el modo user, por lo que, cuando un programa en user mode solicita ejecutarse el sistema operativo crea para el programa un proceso y un espacio de direcciones virtual. Las aplicaciones que se ejecutan por medio del user mode tienen una menor cantidad de privilegios que las aplicaciones de user mode y no pueden acceder de una manera directa a los recursos del sistema. Por otro lado, se encuentra el kernel mode que es un programa central en el que se basan todos los componentes que engloba el sistema operativo, de este modo, este mode se usa para acceder a los componentes de hardware y programar que procesos tienen que ejecutarse en un sistema informatico y en que momento. En conlusión el Kernel mode a diferencia del user mode tiene mas privilegios, puesto que puede interactuar con el hardware de manera directa. 


# INTERRUPTIONS VS TRAPS

Una interruption o interrupcion se encarga de transferir el control a la rutina de servicio de la misma, dicho de otro modo, estas interruptores son señales de hardware que provienen de dispositivos externos que dan la señal que se requiere atencion del sistema operativo. Cuando estos interruptores se producen el control se transfiere al manejador de interrupciones correspondiente al sistema operativo.

Por otro lado, trap es una interrupcion que se genera por el software que es causada por un error o por un requerimiento que proviene del usuario, de este modo, la diferencia principal entre trap e interruptions es que la primera es activada por un programa de usuario para invocar una funcionalidad del sistema operativo y la interrupcion activa un dispositivo hardware para lograr que el procesador ejecute la rutina de gestión de interrupciones que corresponde.