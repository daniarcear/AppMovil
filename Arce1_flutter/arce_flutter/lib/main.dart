import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

 // ACA SE CAMBIA EL COLOR DE LA APLICACION
// Theme config for FlexColorScheme version 7.3.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
theme: FlexThemeData.light(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
darkTheme: FlexThemeData.dark(
  scheme: FlexScheme.jungle,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,


// HASTA ACA SE CAMBIA EL COLOR
      home: const HomeApp(),
    );
  }
}
class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            if (kDebugMode) {
              print('Icono de menú presionado!');
            }
          },
        ),
        title: Text(
          'Arce',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              if (kDebugMode) {
                print('Icono de persona presionado!');
              }
            },
          ),
        ],
      ),
      //ACA EMPIEZA LA LISTA
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              ListTile(
                //ACA SE AGREGA UN USUARIO CON IMAGEN - 
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/empanada.jpeg'), // CAMBIAR RUTA
                ),
                //HASTA ACA
                title: const Text(
                  'Empanada',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar empanada');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Empanada');
                  }
                },
              ),
              const Divider(),
              ListTile(
                //ACA SE AGREGA UN USUARIO CON LETRA
                leading: const CircleAvatar(
                   backgroundImage: AssetImage(
                      'assets/sopaipilla.jpeg')
                  ,
                ),
                title: const Text(
                  'Sopaipilla',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar sopaipilla');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Sopaipilla');
                  }
                },
              ),
              const Divider(),
                ListTile(
                //ACA SE AGREGA UN USUARIO CON LETRA
                leading: const CircleAvatar(
                   backgroundImage: AssetImage(
                      'assets/manzana.jpeg')
                
                ),
                title: const Text(
                  'Manzana',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar manzana');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Manzana');
                  }
                },
              ),
              const Divider(),
                ListTile(
                //ACA SE AGREGA UN USUARIO CON LETRA
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/naranja.jpeg'),
                ),
                title: const Text(
                  'Naranja',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar naranja');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: naranja');
                  }
                },
              ),
              const Divider(),
                ListTile(
                //ACA SE AGREGA UN USUARIO CON LETRA
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/pera.jpeg'),
                ),
                title: const Text(
                  'Pera',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar pera');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Pera');
                  }
                },
              ),
              const Divider(),
              ListTile(
                //ACA SE AGREGA UN USUARIO CON IMAGEN - 
                leading: const CircleAvatar(
                 backgroundColor: Colors.purple),
                //HASTA ACA
                title: const Text(
                  'Tuna',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar tuna');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Tuna');
                  }
                },
              ),
              const Divider(),
              ListTile(
                //ACA SE AGREGA UN USUARIO CON LETRA
                leading: const CircleAvatar(
                   backgroundColor: Colors.green,
                ),
                title: const Text(
                  'Kiwi',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar kiwi');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: kiwi');
                  }
                },
              ),
              const Divider(),ListTile(
                //ACA SE AGREGA UN USUARIO CON LETRA
                leading: const CircleAvatar(
                   backgroundColor: Colors.yellow,
                ),
                title: const Text(
                  'Mandarina',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar mandarina');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Mandarina');
                  }
                },
              ),
              const Divider(),
              ListTile(
                //ACA SE AGREGA UN USUARIO CON LETRA
                leading: const CircleAvatar(
                   backgroundColor: Colors.lightBlue
                  
                ),
                title: const Text(
                  'Platano',
                ),
                subtitle: const Text('Alimentos'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Comprar platano');
                    }
                  },
                  child: const Text('Comprar'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Platano');
                  }
                },
              ),
              
              const Divider(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              //ICONOS - VISITAR FONTS ICONS - https://fonts.google.com/icons
              icon: const Icon(Icons.home),
              onPressed: () {
                // Agrega la lógica para el botón Home aquí
              },
            ),
            IconButton(
              //ICONOS
              icon: const Icon(Icons.favorite),
              onPressed: () {
                // Agrega la lógica para el botón Add aquí
              },
            ),
            IconButton(
              
              icon: const Icon(Icons.person),
              onPressed: () {
                // Agrega la lógica para el botón Video aquí
              },
            ),
          ],
        ),
      ),
    );
  }
}
