import 'package:flutter/material.dart';
import 'splashscreen.dart'; 


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    
      home: SplashScreen(),
    );
  }
}



class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
  
}



//BOTTOM BAR
class _HomeAppState extends State<HomeApp> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<String> _screenTitles = ["Inicio", "Búsqueda", "Add", "Videos", "Perfil"];
  final List<IconData> _screenIcons = [Icons.home_filled, Icons.search, Icons.add, Icons.maps_ugc_outlined, Icons.person_rounded];


  final List<String> _chipLabels = [
    "Tatuajes",
    "Fotografia",
    "Cerámica",
    "Grabado",
    "Outfits",
    "Acuarela",
    "Decoración"
  ];
 final List<String> _tableroLabels = [
    "Pines",
    "Tableros",

  ];
  
  int _selectedIndex = 0;



  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _pageController = PageController(initialPage: _currentPage);
    _selectedIndex = _tableroLabels.indexOf("Tableros"); 
  }




  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }




  void _navigateToPage(int index) {
    setState(() {
      _currentPage = index;
    });
    _pageController.jumpToPage(index);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentPage == 0
 ? AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List<Widget>.generate(_chipLabels.length, (int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
    
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _chipLabels[index],
                  style: TextStyle(
                    color: _selectedIndex == index
                        ? Colors.black // Color del texto activado
                        : Colors.grey, // Color del texto desactivado
                    fontFamily: 'Lato',
                  ),
                ),
                const SizedBox(height: 4), // Espacio entre el texto y la línea
                if (_selectedIndex == index)
                  Container(
                    width: 60, // Ancho de la línea
                    height: 4, // Altura de la línea
                    color: Colors.black, // Color de la línea
                  ),
              ],
            ),
          ),
        );
      }),
    ),
  ),
)



        : null,
      body: PageView(
        controller: _pageController,
        children: [
          const MyTwoColumnLayout(),


//PAGINA DOS JESU
          CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(height: 16), // Añade un espacio entre la barra de búsqueda y los elementos siguientes
              ),

              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: const EdgeInsets.all(0),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Icon(Icons.search, color: Color.fromARGB(255, 92, 90, 90)),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Pinterest',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                          child: Icon(Icons.photo_camera, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

SliverToBoxAdapter(
  child: Card(
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 350, // Altura de cada elemento en la lista horizontal
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Lista que se desplaza horizontalmente
            itemCount: 3, // Número de imágenes
            itemBuilder: (context, index) {
              // Aquí puedes ajustar la lógica para cargar diferentes imágenes según el índice
              String imagePath = 'assets/F.jpeg'; // Cambia el nombre de las imágenes según tus assets
              return Padding(
                padding: const EdgeInsets.all(0.0), // Añade relleno entre las imágenes
                child: Image.asset(
                  imagePath,
                  width: 500, // Ancho de la imagen
                  fit: BoxFit.cover, // Ajusta la imagen para cubrir el espacio asignado
                ),
              );
            },
          ),
        ),
      ],
    ),
  ),
),


//FOTO GRANDE BUSQUEDA
  

  const SliverToBoxAdapter(
                child: SizedBox(height: 5), // Añade un espacio entre la barra de búsqueda y los elementos siguientes
              ),

// FIN PAGINA JESU
//FOTO GRANDE BUSQUEDA
const SliverToBoxAdapter(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // ... Código existente de la sección de la foto grande ...

      SizedBox(height: 10), // Espacio entre la foto grande y el texto

      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Ideas from creators',
          textAlign: TextAlign.center, // Ajusta la alineación del texto según lo necesites
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  ),
),

  //STORIES BUSQUEDA 
     SliverToBoxAdapter(
  child: Card(
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 250, // Altura de cada elemento en la lista horizontal
          child: ListView.builder(
            scrollDirection: Axis.horizontal, 
            itemCount: 6, 
            itemBuilder: (context, index) {
              String imagePath = 'assets/7.jpg'; 
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    ),
  ),
),



            ],
          ),

CustomScrollView(
  slivers: [
    SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.account_circle, color: Colors.grey), // Cambia el color a gris
        onPressed: () {
        },
      ),
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List<Widget>.generate(_tableroLabels.length, (int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 Text(
                 _tableroLabels[index],
                 textAlign: TextAlign.center, // Alinea el texto al centro PERO NO FUNCIONA!!
                 style: TextStyle(
                  color: _selectedIndex == index ? Colors.black : Colors.grey,
                  fontFamily: 'Lato',
                  ),
                      ),



                    const SizedBox(height: 4), // Espacio entre el texto y la línea
                    if (_selectedIndex == index)
                      Container(
                        width: 60, // Ancho de la línea, puedes ajustarlo según sea necesario
                        height: 4, // Altura de la línea, puedes ajustarlo según sea necesario
                        color:  Colors.black, // Color de la línea
                      ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
       actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.more_horiz, color: Colors.black),
        ),

        
      ],
    ),
    

   SliverPadding(
  padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
  sliver: SliverToBoxAdapter(
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 236, 236),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Icon(Icons.search, color: Color.fromARGB(255, 92, 90, 90)),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
            
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Icon(Icons.swap_vert, color: Color.fromARGB(255, 0, 0, 0)), // Icono del corazón
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
          child: Icon(Icons.add, color: Color.fromARGB(255, 0, 0, 0)), // Icono del corazón
        ),
        
      ],
    ),
  ),
),

  SliverGrid(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 2,
    mainAxisSpacing: 16,
  ),
  delegate: SliverChildBuilderDelegate(
    (context, index) {
      List<String> imagePaths = [
        'assets/20.jpg',
        'assets/22.jpg',
        'assets/23.jpg',
        'assets/24.jpg',
        'assets/25.jpg',
        'assets/30.jpg',
      ];

      List<String> titles = [
        'Ideas de tatuaje',
        'Grabado',
        'Outfits',
        'Recetas',
        'Cerámicas',
        'Fondos',
      ];

    return Padding(
  padding: const EdgeInsets.all(10.0), 
  child: Ink(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.transparent,
    ),
    child: InkWell(
      onTap: () {
        // Manejar la acción de toque si es necesario
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea los títulos a la izquierda
        children: [
          Cards(
            description: titles[index % titles.length],
            imagePath: imagePaths[index % imagePaths.length],
          ),
          const SizedBox(height: 8), // Espaciado entre títulos
          const Row(
            children: [
              Text(
                '19 Pines',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0), // Cambia este color según tus preferencias para "19 Pines"
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 10), // Espaciado entre los dos textos
              Text(
                '4 sem',
                style: TextStyle(
                  color: Color.fromARGB(255, 142, 142, 142), // Cambia este color según tus preferencias para "4 sem"
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);


    },
    childCount: 10,
  ),
),

  ],
)

        ],
        onPageChanged: (index) {
          _navigateToPage(index);
        },
      ),
bottomNavigationBar: SizedBox(
  height: kBottomNavigationBarHeight, // Usar la altura por defecto del BottomNavigationBar
  child: BottomNavigationBar(
    currentIndex: _currentPage,
    onTap: _navigateToPage,
    type: BottomNavigationBarType.fixed,
   items: List.generate(
  _screenTitles.length,
  (index) => BottomNavigationBarItem(
    icon: Icon(
      _screenIcons[index],
      color: _currentPage == index ? Colors.black : Colors.grey,
    ),
    label: '', // Establecer el label como una cadena vacía
  ),
),

  ),
),


    );
  }
}


class MyTwoColumnLayout extends StatelessWidget {
  const MyTwoColumnLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    MyAsymmetricCard(
                      height: 300,
                      description: 'Tulips in Amsterdam',
                      imagePath: 'assets/1.jpg',
                    ),
                    MyAsymmetricCard(
                      height: 200,
                      description: 'Screen saver of dogs',
                      imagePath: 'assets/2.jpg',
                    ),
                    MyAsymmetricCard(
                      height: 120,
                      description: 'Books',
                      imagePath: 'assets/3.jpg',
                    ),
                    MyAsymmetricCard(
                      height: 90,
                      description: 'Aesthetic',
                      imagePath: 'assets/5.png',
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  children: [
                    MyAsymmetricCard(
                      height: 180,
                      description: 'Dogs',
                      imagePath: 'assets/2.jpg',
                      
                    ),
                    MyAsymmetricCard(
                      height: 140,
                      description: 'Diary',
                      imagePath: 'assets/3.jpg',
                    ),
                    MyAsymmetricCard(
                      height: 130,
                      description: 'Tulips',
                      imagePath: 'assets/1.jpg',
                    ),
                    MyAsymmetricCard(
                      height: 95,
                      description: 'Makeup',
                      imagePath: 'assets/6.jpg',
                    ),
                    MyAsymmetricCard(
                      height: 250,
                      description: 'Eyeshadow',
                      imagePath: 'assets/7.jpg',
                    ),
                  ],
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}





class MyAsymmetricCard extends StatelessWidget {
  final double height;
  final String description;
  final String imagePath;
  

  const MyAsymmetricCard({Key? key, required this.height, required this.description, required this.imagePath,}) : super(key: key);


 @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Column(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 4.0,
                right: 4.0,
                top: 4.0,
                bottom: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Icon(
                    Icons.more_horiz, 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String description;
  final String imagePath;

  const Cards({super.key, required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0), 
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0), 
            child: Image.asset(imagePath, height: 150, width: double.infinity, fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
