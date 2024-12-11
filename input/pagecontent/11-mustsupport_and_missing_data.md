Los sistemas que afirman cumplir con un perfil DEBEN admitir los elementos de un perfil como se define a continuación: Esta guía adopta las siguientes definiciones de MustSupport para todas las transacciones directas entre los sistemas de envío y recepción.

**Todos los sistemas de envío**

Los sistemas de envío se definen como: 1) Sistemas de proveedores, 2) Sistemas de pago y 3) Plataformas de coordinación.

* El sistema de envío **DEBE** proporcionar la capacidad para que el usuario ingrese, seleccione o, de otro modo, haga que se completen todos los elementos marcados como MustSupport.
* El sistema de envío **DEBE** completar todos los elementos con una bandera MustSupport si la información existe y el consentimiento del paciente y los permisos del receptor lo permiten. Un sistema **DEBE** poder demostrar la transmisión de todos los elementos MustSupport.
* El sistema de envío **NO DEBE** incluir un elemento de datos en la instancia de recurso si la cardinalidad es 0..n y la información para ese elemento de datos en particular no está presente.
* Cuando los elementos tienen una cardinalidad inferior a uno o más, las instancias que cumplen con esos perfiles **DEBEN** incluir el elemento. Cuando el perfil incluye soporte explícito para una extensión, como [dataAbsentReason], entonces la extensión puede enviarse sin proporcionar un valor o elementos secundarios. Si no se define ninguna extensión explícitamente en el perfil, a menos que el perfil se derive de CL Core (que tiene reglas más laxas), la expectativa en esta IG es que el elemento **DEBE** tener un valor o elementos secundarios estándar y enviar una extensión en su lugar no es compatible.

**Todos los sistemas de recepción**

Los sistemas receptores se definen como 1) sistemas pagadores, 2) sistemas proveedores, 3) plataformas de coordinación, 4) aplicaciones CBO y 5) aplicaciones de consumidores cuando reciben transacciones del sistema emisor.

* El sistema receptor **DEBE** ser capaz de procesar instancias de recursos que contengan elementos de datos requeridos y permitidos sin generar un error o provocar que la aplicación falle.
* El sistema receptor **DEBE** ser capaz de procesar (mostrar, almacenar, etc.) todos los elementos requeridos (cardinalidad 1 o mayor) y **DEBE** ser capaz de procesar (mostrar, almacenar, etc.) todos los elementos MustSupport.
* NOTA: la expectativa es que este requisito se endurezca ( **DEBERÍA** pasar a **DEBERÁ** ) para al menos un subconjunto de los elementos MustSupport en futuras versiones del IG.
* El sistema receptor **DEBE** interpretar los elementos de datos faltantes dentro de las instancias de recursos como datos que no están presentes en los sistemas del remitente o donde la transmisión de los datos está prohibida por las reglas de control de acceso.
* El sistema receptor **DEBE** ser capaz de procesar instancias de recursos que contengan elementos de datos que afirmen información faltante sin generar un error o provocar que la aplicación falle.

**Conformidad con el perfil básico de Chile**

Cuando esta IG no restrinja adicionalmente un perfil de CL COre, los actores deberán seguir la definición de CL Core de Must Support y Missing Data.

