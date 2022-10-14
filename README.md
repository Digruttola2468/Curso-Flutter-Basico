# Curso Basico de Flutter

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

Android Studio
Una vez tengas instalado Android Studio, puedes descargarlo de aquí https://developer.android.com/studio/?hl=es-419 , instalaremos el Plugin de Flutter, para esto ve al IDE en la opción de Preferences > Plugins en Mac o en Windows/Linux File > Settings > Plugins.

En la ventana que se abre da click en la parte inferior en el botón Browse repositories. Se sobrepondrá otra nueva ventana ahí escribe Flutter, da click en Install.

Captura de pantalla 2018-12-28 a la(s) 12.31.27.png
A continuación te solicitará instalar el Plugin de Dart da click en Yes.

Captura de pantalla 2018-12-28 a la(s) 12.33.31.png
Reinicia el IDE Android Studio y todo listo.

Visual Studio Code
Una vez hayas descargado Visual Studio Code https://code.visualstudio.com/download procederemos a instalar el Plugin de Flutter y Dart.

Abre el Editor y dirígete al menú View > Command Palette teclea la palabra install y selecciona: Extensions: Install Extension

Ahora escribe Flutter y da click en install.

Captura de pantalla 2018-12-28 a la(s) 12.34.57.png
Reinicia el Editor realiza los pasos anteriores y escribe Dart. Instálao, reinicia y listo.

## Composición de un proyecto en Flutter
Una vez completado el proceso de inicialización, Android Studio habrá generado el sistema de archivos del proyecto que contendrá básicamente las siguientes carpetas:

- flutter_app/ : carpeta raíz del proyecto, donde además crearemos entre otras cosas las carpetas donde guardaremos nuestros recursos o assets de la aplicación.

- android/ : aquí se almacenarán todos los archivos que corresponden a un **proyecto Android**. Es en esta ubicación donde se encontrarán los archivos de configuración y demás recursos que pudiéramos querer retocar o modificar en Android Studio para comportamientos particulares de la app en esta plataforma, como el ***FlutterActivity*** o el ***AndroidManifest***.

- ios/ : similarmente, aquí se almacenarán todos los archivos que corresponden al **sistema operativo iOS**. Es en esta ubicación donde se encontrarán los archivos de configuración y otros que pudiéramos querer retocar o ajustar en **XCode** para comportamientos específicos relacionados con esta plataforma, como el ***FlutterAppDelegate*** o el ***info.plist***, entre otros.

- lib/ : es aquí donde encontramos todos los archivos que corresponden a nuestro proyecto con Dart y donde vive la aplicación Flutter. Todos los archivos que estaremos generando durante el curso se almacenarán en esta carpeta.

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
