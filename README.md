# Curso Basico de Flutter

usaremos como interfaz de nuestro proyecto es el siguiente link
[UI7 App - Uplabs](https://www.uplabs.com/posts/ui7-kit)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Dart y Flutter
Dart es el lenguaje del futuro ya que se puede operar con Flutter(mobile), Web(codigo que corre en el navegador AngularDart), Server (Aplicaciones de lado del servidor Aqueduct)

Sintaxis basica de Dart
```Dart
//Define a Function
printInteger(int aNumber){
  print('The number is $aNumber'); //Print to console
}
//This is where the app starts executing
main() {
  var number = 32;      //Declare and initialize a variable
  printInteger(number); //Call a function
}
```

```Dart
class HolaMundo extends StatelessWidget {
  @Override
  Widget build(BuildContext context){
    return null;
  }
}
```

![](./assets/readme/ejemploDart.jpg)

[cheatsheet](https://koenig-media.raywenderlich.com/uploads/2019/08/RW-Dart-Cheatsheet-1.0.2.pdf)

## Flutter para desarrolladores Android y iOS
**Android**

- Todo lo que tenemos en las interfaces de Android como: botones, textos, etiquetas, imágenes, etc., proviene (o es una instancia) de la clase padre View y todos estos elementos en su conjunto, al final, constituirán a su vez un View. El lenguaje de esquematización usado en Android para diseñar y definir la composición de las interfaces es XML.

**iOS**

- De manera similar, en iOS todo lo que tenemos en las interfaces como: botones, textos, etiquetas, etc., proviene (o es una instancia) de la clase principal UIView. Para la composición y diseño de las interfaces iOS cuenta con un entorno gráfico dedicado a esta tarea cuyo componente principal son los Storyboards.

**Flutter**

- En Flutter, el equivalente a los Views, UIViews y Elements, con los que se componen las interfaces de las aplicaciones, son los Widgets, de hecho todo en Flutter es en esencia, un Widget, y la forma en que se diseñan y se componen las interfaces es mediante la definición de árboles de Widgets o Widget tree en los que todos los Widget de la interfaz están organizados de forma anidada y representan atributos o propiedades de este árbol.

## Como luce una app construida en Flutter??
Para ver todo el potencial que tiene Flutter para la creación de interfaces avanzadas que ofrecen una excelente experiencia de usuario puedes consultar el catálogo de demostraciones creado por la comunidad en el sitio web https://startflutter.com

Según sus creadores, el objetivo principal de Flutter no es otro que generar mejores aplicaciones móviles, que funcionen mejor, se vean mejor y ofrezcan mejores experiencias a los usuarios, tanto en Android como en iOS.

## Instalacion Flutter
La instalación de Flutter es muy sencilla y se comportará ligeramente imparcial en todos los Sistemas Operativos. Tenemos dos opciones en entornos de desarrollo.

**Android Studio y Visual Studio Code**

SDK Flutter
Antes que todo necesitarás descargar el SDK de Flutter, este es el kit de librerías y herramientas que necesitas para desarrollar.

Descárgalo haciendo click aquí https://flutter.io/docs/get-started/install y posteriormente elige tu Sistema Operativo.

Estarás descargando un archivo flutter_xxx_v1xxx.zip descomprímelo y déjalo disponible en tu carpeta home o en un lugar de tu computadora que no sea vulnerable a ser borrado.

**Android Studio**:
Una vez tengas instalado Android Studio, puedes descargarlo de aquí https://developer.android.com/studio/?hl=es-419 , instalaremos el Plugin de Flutter, para esto ve al IDE en la opción de Preferences > Plugins en Mac o en Windows/Linux File > Settings > Plugins.

En la ventana que se abre da click en la parte inferior en el botón Browse repositories. Se sobrepondrá otra nueva ventana ahí escribe Flutter, da click en Install.

**Visual Studio Code**:
Una vez hayas descargado Visual Studio Code https://code.visualstudio.com/download procederemos a instalar el Plugin de Flutter y Dart.

Abre el Editor y dirígete al menú View > Command Palette teclea la palabra install y selecciona: Extensions: Install Extension

Ahora escribe Flutter y da click en install.

Reinicia el Editor realiza los pasos anteriores y escribe Dart. Instálao, reinicia y listo.

## Composición de un proyecto en Flutter
Una vez completado el proceso de inicialización, Android Studio habrá generado el sistema de archivos del proyecto que contendrá básicamente las siguientes carpetas:

- *flutter_app/* : carpeta raíz del proyecto, donde además crearemos entre otras cosas las carpetas donde guardaremos nuestros recursos o assets de la aplicación.

- *android/* : aquí se almacenarán todos los archivos que corresponden a un **proyecto Android**. Es en esta ubicación donde se encontrarán los archivos de configuración y demás recursos que pudiéramos querer retocar o modificar en Android Studio para comportamientos particulares de la app en esta plataforma, como el ***FlutterActivity*** o el ***AndroidManifest***.

- *ios/* : similarmente, aquí se almacenarán todos los archivos que corresponden al **sistema operativo iOS**. Es en esta ubicación donde se encontrarán los archivos de configuración y otros que pudiéramos querer retocar o ajustar en **XCode** para comportamientos específicos relacionados con esta plataforma, como el ***FlutterAppDelegate*** o el ***info.plist***, entre otros.

- *lib/* : es aquí donde encontramos todos los archivos que corresponden a nuestro proyecto con Dart y donde vive la aplicación Flutter. Todos los archivos que estaremos generando durante el curso se almacenarán en esta carpeta.

Hay un archivo especial llamado **pubspec.yaml** donde se guardan las configuraciones del proyecto. Este archivo está escrito en el lenguaje **YAML**, que es un formato de serialización de datos legible por humanos inspirado en XML. En este archivo tendremos que declarar todos los recursos externos o assets que vamos a utilizar en nuestro proyecto como: fuentes de letras, imágenes, etc.

## Programación Declarativa en Flutter
El estilo de programación que utiliza Flutter se llama Programación Declarativa, inspirado en el estilo de programación de React y que va de la mano con el paradigma de Programación Funcional.

***Existen dos tipos de estilos de programación:***

- **Programación Imperativa:** es el estilo de programación que más se utiliza en lenguajes de programación tradicionales como Lenguaje C, Java, PHP o JavaScript. En general la programación imperativa se fundamenta en el uso de métodos de clases que reciben parámetros o argumentos sencillos para realizar tareas específicas.

- **Programación Declarativa:** este estilo de programación utiliza como parámetros estructuras un poco más complejas formadas por datos compuestos, objetos, pares propiedad-valor, etc. que en cierta forma es más fácil de leer y más comprensible para el desarrollador. Este estilo de programación es el que usa Flutter.

Básicamente ambos estilos de programación hacen lo mismo, producen los mismos resultados, su diferencia radica esencialmente en la legibilidad y la organización del código.

## Estructura de un programa en Flutter

En el archivo de `./lib/main.dart` podemos encontrar: 
- `import 'package:flutter/material.dart';` Widgets de Material Design provistos por SDK Flutter
- `void main() => runApp(App());` La funcion runApp toma el widget y lo sirve

***Composicion de clases que utiliza flutter***
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @Override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @Override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      )
    );
  }
}
```

***Estructura basica de un Scaffold***
```dart
return Scaffold(
  appBar: ,
  body: ,
  bottomNavigationBar: ,
  floatingActionButton: ,
  floatingActionButtonLocation: ,
);
```

## Widgets basicos

““En Flutter, casi todo es un widget””. Son los componentes elementales de la interfaz de usuario de la aplicación.

Los widgets básicos son el punto de partida con los que puedes comenzar a crear tus propios widgets (compuestos o más complejos) en Flutter.

- **Text**: representa un texto o cadena de caracteres. Admite diversos parámetros o propiedades, además del texto literal que será mostrado. Podemos definirle estilos y características de apariencia particulares.

- **Row**: permite organizar y posicionar otros widgets hijos en forma de fila o renglón.

- **Column**: permite organizar y posicionar otros widgets hijos en forma de columna.

- **Stack**: permite apilar widgets hijos con respecto al eje Z (elevación) en la interfaz.

- **Container**: es uno de los widgets más versátiles de Flutter y permite organizar otros widgets como si fuera una caja o contenedor. Este widget es equivalente a los divs de html y admiten atributos similares de apariencia.

[Widget Catelog](https://docs.flutter.dev/development/ui/widgets)

[Flutter - Dart API docs](https://api.flutter.dev/)

[Text class - widgets library - Dart API](https://api.flutter.dev/flutter/widgets/Text-class.html)

## Widgets con estado y sin estado

Flutter dipone principalmente de dos tipos de Widgets:

- **Widgets con estado o StatefulWidgets**: Son todos los widgets con los que el usuario de la aplicación puede tener una interacción directa. Por ejemplo: Checkbox, Radio, Slider, Form. Este tipo de widgets por lo general disparan algún evento, acción o comportamiento determinado como respuesta a la interacción con el usuario.

- **Widgets sin estado o StatelessWidgets**: Los widgets de este tipo no reaccionan ante el intento de interacción con el usuario. No tienen asociado una acción o comportamiento particular. Son estáticos en la interfaz. Por ejemplo: Icono, Texto, Contendor con color, entre otros.

Ambos tipos de widgets heredan sus características y comportamientos de una clase principal Widget.

## Análisis de Interfaces de Usuario en Flutter

Analizar las interfaces de usuario para determinar la mejor forma de componer los diferentes grupos de elementos visuales o de interacción que conforman nuestra aplicación es una tarea común entre desarrolladores de aplicaciones móviles. De hecho la propia documentación oficial de Flutter lo recomienda.

El análisis consiste básicamente en identificar o detectar visualmente cuál sería la mejor forma de construir las diferentes secciones de nuestra interfaz, tomando en cuenta los widgets básicos de los cuales disponemos en Flutter. Prever la manera en que pueden ser anidados u organizados los diferentes widgets básicos, incluso determinar qué grupos de widgets pudieran pasar a ser nuevos widgets compuestos nos facilitará mucho el trabajo posterior ya cuando pasemos al código del programa.

Una técnica usada para representar el widget tree resultante del análisis de la interfaz es mediante un diagrama de árbol, en el que cada widget se representa con una símbolo circular en una estructura de dependencias o asociaciones derivadas desplegadas en forma de árbol descendente.

Es recomendable que al momento de analizar el layout de una interfaz ya diseñada es hacer un diagrama de forma de tree
![]()

[Layout widgets - Flutter](https://docs.flutter.dev/development/ui/widgets/layout)

[UI7 App - Uplabs](https://www.uplabs.com/posts/ui7-kit)

## Tipografias y Google Fonts

Tipografías nos referimos precisamente al tipo y estilo de letras que usaremos en los textos de nuestra interfaz, esta característica estará determinada por las indicaciones que nos haya suministrado nuestro equipo de diseño.

Un sitio web muy utilizado e interesante para obtener tipografías que puedes usar en tus proyectos es Google Fonts.

Para incorporar las tipografías personalizadas a nuestro proyecto crearemos una carpeta particular llamada fonts/ en la que guardaremos los archivos que descarguemos desde Google Fonts. Seguidamente, debemos declarar este recurso en el archivo pubspecs.yaml. Este archivo contiene las especificaciones de todos los recursos públicos que estarán disponibles para ser usados en nuestro proyecto. La sintaxis yaml está inspirada en json y xml y se usa en Flutter para definir la estructura de recursos y configuraciones globales de nuestra aplicación.

La forma de declarar los recursos de tipografía que usaremos en nuestro proyecto es la siguiente:

```YAML
...
fonts:
  - family:
  fonts:
    - asset:
...
```
Algo que se debe tener en cuenta es que yaml es bastante estricto con la indentación de los datos. En otras palabras, la sangría, tabulación o espaciado de cada línea debe estar indicada correctamente para que no haya problemas con la lectura y procesamiento posterior de las configuraciones.

Para aplicar la nueva tipografía a nuestro código bastará con incluir en el widget TextStyle, la propiedad fontFamily e indicar en ella el nombre de la fuente que hemos declarado en nuestro archivo de configuración.

## Widgets Decorados

Al hablar de widgets decorados nos referimos básicamente a un widget de tipo Container(), al que podemos darle características visuales extendidas, o de decoración. Esto lo podemos conseguir al asignar a la propiedad decoration de dicho Container(), otro widget especial llamado BoxDecoration().

Algunas de las propiedades de decoración disponibles con este widget son:

- color: para asignar el color de relleno de fondo del contenedor.
- gradient: para definir un gradiente de colores de relleno.
- border: para asignar un borde.
- borderRadius: para indicar que los bordes del contenedor serán redondeados.

Puedes consultar la documentación oficial de Flutter para ver la lista completa de propiedades disponibles.

La funcion [FractionalOffset]() es indicar un fragmento de la pantalla en base a su dirección tomando en cuenta dos puntos de un plano cartesiano (dx,dy), de esta forma:

FractionalOffset(1.0, 0.0) representa la parte superior derecha de la pantalla.

FractionalOffset(0.0, 1.0) representa la parteinferior izquierda de la pantalla

FractionalOffset(0.5, 2.0) representa un fragmento/punto en la mitad de la pantalla con respecto al eje X, y por debajo de del contenedor padre.

