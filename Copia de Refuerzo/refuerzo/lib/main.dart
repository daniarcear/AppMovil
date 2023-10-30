import 'package:flutter/material.dart';
import 'componentes.dart'; // Importa el archivo componentes.dart que contiene CustomCard

void main() {
  runApp(const MyApp());
}
bool switchValue = true; // Define una variable para controlar el estado del interruptor

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        
              toolbarHeight: 56, // Altura del AppBar
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
              title: const Column( // Usamos el título para los textos
                crossAxisAlignment: CrossAxisAlignment.start,
                
              ),
              
            ),






        body: SingleChildScrollView( //Permite eventualemnte desplazarse a un punto x en el scroll.
          child: Column( //será una columna vertical, navegamos verticalmente

            children: [
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(16, 0, 16, 0), // Margen izquierdo y derecho para el TextField
                //   child: Container(
                //     decoration: BoxDecoration(

                //       color: Color.fromARGB(255, 236, 236, 236),
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     margin: const EdgeInsets.all(0),
                //     child: const Row(
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.fromLTRB(12, 0, 0, 0), // Margen izquierdo para el icono de búsqueda
                //           child: Icon(Icons.search, color: Color.fromARGB(255, 92, 90, 90)),
                //         ),
                //         SizedBox(width:16), // Espacio entre el ícono de búsqueda y el TextField
                //         Expanded(
                //           child: TextField(
                //             decoration: InputDecoration(
                //               hintText: 'Search Uber Eats',
                //               border: InputBorder.none,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsets.fromLTRB(0, 0, 12, 0), // Margen derecho para el ícono de filtro
                //           child: Icon(Icons.tune, color: Colors.black),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              const Divider(//para separar del siguiente container, es horizontal
                height: 8.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),




/*ACA ESTÁ LAS DOS IMÁGENES
*SE CARGARN DESDE ASSSETS, TIENEN UNA ALTURA DE 88
*/





          Row(
            children: [
            Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 6, 0, 0),
              child: Container(
                height: 188.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/a1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

                ),
              ),
            ),
                  ),
                  


/*SEPARO LAS DOS COLUMNAS*/
/*EL SIZEBOX SE PUEDE OMITIR*/
          const SizedBox(width: 8.0), //6 PIXELES DE SEPARACIÓN
          Expanded(
         child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 6, 16, 4),
              child: Container(
                height: 188.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/a2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

                ),
              ),
            ),
                  ),
                  

                  

                  
                ],
                
              ),

/*USARÉ SOLO EL PADDING COMO SEPARACIÓN*/
         /*     const Divider( //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
*/


             /*NUEVO CONTAINER. EN LA FILA HABRÁ 4 EXPANDED, LOS EXPANDED DETERMINAN EN CUÁNTAS PARTES SE DIVIDE LA FILA*/



Row(
  children: [
    /*1ER EXPANDED*/
    Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 8, 0, 0),
        child: Container(
          height: 370.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/a3.jpeg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),

          ),
        ),
      ),
    ),
    /*SEPARO CON EL SIGUIENTE CONTAINER*/
    //const SizedBox(width: 2.0), //Podría no ser necesario, bastaría evetualmente con el padding de más abajo, no se alineará, es lo que busco.
      /*PROBABLEMENTE PUEDO PRESCINDIR POSTERIORMENTE SI UTILIZO EL PADDING*/
      /*2DO EXPANDED*/
   
      /*SEPARO*/
    const SizedBox(width: 6.0), //OMITIBLE PARA QUE FUNCIONE SIMÉTRICAMENTE EL PADDING
      /*3ER EXPANDED*/
   
      /*SEPARO*/
    const SizedBox(width: 2.0),
      /*4TO EXPANDED*/
    Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6, 8, 16, 0),
        child: Container(
          height: 372.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/a4.jpeg'),
              
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),

          ),
        ),
      ),
      
    ),
  
  ],
  
),

Row(
  children: [
    /*1ER EXPANDED*/
    Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 8, 0, 0),
        child: Container(
          height: 370.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/a3.jpeg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),

          ),
        ),
      ),
    ),
    /*SEPARO CON EL SIGUIENTE CONTAINER*/
    //const SizedBox(width: 2.0), //Podría no ser necesario, bastaría evetualmente con el padding de más abajo, no se alineará, es lo que busco.
      /*PROBABLEMENTE PUEDO PRESCINDIR POSTERIORMENTE SI UTILIZO EL PADDING*/
      /*2DO EXPANDED*/
   
      /*SEPARO*/
    const SizedBox(width: 6.0), //OMITIBLE PARA QUE FUNCIONE SIMÉTRICAMENTE EL PADDING
      /*3ER EXPANDED*/
   
      /*SEPARO*/
    const SizedBox(width: 2.0),
      /*4TO EXPANDED*/
    Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6, 8, 16, 0),
        child: Container(
          height: 372.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/a4.jpeg'),
              
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),

          ),
        ),
      ),
      
    ),
  
  ],
  
),
            

 //ACÁ LO DEMÁS


const Padding(
  padding: EdgeInsets.fromLTRB(20, 8, 10, 0),
  child: Card1(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),
const Padding(
  padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
  // child: Card2(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),
        
                ],
           
          ),
        ), // Se cierra el body



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black), // Icono blanco
              label: 'Home',
            ),

             BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black), // Icono blanco
              label: 'Grocery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.black), // Icono blanco
              label: 'Search',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.sms, color: Colors.black), // Icono blanco
              label: 'Chart',
            ),
               BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.black), // Icono blanco
              label: 'Account',
            ),
          ],
          selectedItemColor: Colors.black, // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(255, 103, 102, 102), // Color de íconos no seleccionados


        ),
      ),//Se cierra SCaffold
    );//Se cierra MaterialApp
  }//Se cierra el Widget Build contexts
}// se cierra la clase
