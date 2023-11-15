import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:ayuda/theme.dart';
import 'splashscreen.dart'; 


void main() {
  runApp(const MainApp());
}




class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: const SplashScreen(),
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
  final List<IconData> _screenIcons = [Icons.home, Icons.search, Icons.add, Icons.message, Icons.person];


  final List<String> _chipLabels = [
    "Tatuajes",
    "Fotografia",
    "Cerámica",
    "Grabado",
    "Outfits",
  ];

  int _selectedIndex = 0;



  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
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
              title: SingleChildScrollView(
                
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(_chipLabels.length, (int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                        label: Text(_chipLabels[index]),
                        selected: _selectedIndex == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _selectedIndex = selected ? index : 0;
                            // AGREGA LO QUE DESEAS QUE HAGA LA APP
                          });
                        },
                        labelStyle: TextStyle(
                          color: _selectedIndex == index ? Colors.white : Colors.black, fontFamily: 'Lato'
                        ),
                        selectedColor: const Color.fromARGB(255, 73, 96, 114),
                        backgroundColor: MyTheme.lightTheme().colorScheme.primaryContainer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
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

              const SliverToBoxAdapter(
                child: SizedBox(height: 16), // Añade un espacio entre la barra de búsqueda y los elementos siguientes
              ),

//FOTO GRANDE BUSQUEDA
              SliverToBoxAdapter(
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                     
                      Container(
                        height: 350,
                        color: const Color.fromARGB(255, 195, 195, 195),
                      ),
                     
                    ],
                  ),
                ),
              ),


  //STORIES BUSQUEDA 
SliverGrid(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 16.0,
    mainAxisSpacing: 16.0,
  ),

  delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      return Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 350, // Ajusta la altura según sea necesario
              decoration: const BoxDecoration(
                  image: DecorationImage(
                   image: AssetImage('assets/1.jpg'),
                   fit: BoxFit.cover,
                    ),
                  ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 12.0),
                child: Text('Otra Card'),
              ),
            ),
            const SizedBox(
              height: 10, // Ajusta la altura según sea necesario
              child: Padding(
                padding: EdgeInsets.all(8.0),
                
              ),
            ),
            // Puedes agregar más contenido según sea necesario
          ],
        ),
      );
    },
    childCount: 2, // Cambia según cuántas Cards adicionales quieras agregar
  ),
),
            ],
          ),



          CustomScrollView(           
            slivers: [ 
 SliverAppBar(
  leading: IconButton(
    icon: const Icon(Icons.account_circle), // Puedes cambiar a cualquier ícono que desees
    onPressed: () {
      // Acción al presionar el ícono de retroceso
    },
  ),
  title: const Center(
    child: Text(
      'Perfil  Tableros',
      style: TextStyle(
        fontSize: 15, fontFamily: 'Lato',
      ),
    ),
  ),
  actions: [
    IconButton(
      color: const Color.fromARGB(255, 0, 0, 0),
      icon: const Icon(Icons.more_horiz),
      onPressed: () {
        // Acción al presionar el ícono de más
      },
    ),
  ],
  floating: false,
  pinned: false,
  expandedHeight: 80.0,
),


SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
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
                              border: InputBorder.none
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
              
              SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            
            child: const Column(
                  children: [
                    Cards(

                      description: 'Night out outfit',
                      imagePath: 'assets/4.jpg',
                    ),
                    Cards(
      
                      description: 'Makeup',
                      imagePath: 'assets/8.jpg',
                    ),
                    Cards(

                      description: 'Night out',
                      imagePath: 'assets/4.jpg',
                    ),

                    Cards(

                      description: 'Outfits',
                      imagePath: 'assets/4.jpg',
                    ),
                    
                  ],
                ),
                
          );
        },
        childCount: 2, // Cambia según cuántas Cards adicionales quieras agregar
      ),
    ),

            ],
          ),
        ],
        onPageChanged: (index) {
          _navigateToPage(index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _navigateToPage,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          _screenTitles.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(_screenIcons[index]),
            label: _screenTitles[index],
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
                    // MyAsymmetricCard(
                    //   height: 140,
                    //   description: 'Descripción 14',
                    //   imagePath: 'assets/4.jpg',
                    // ),
                    // MyAsymmetricCard(
                    //   height: 130,
                    //   description: 'Descripción 15',
                    //   imagePath: 'assets/4.jpg',
                    // ),
                    // MyAsymmetricCard(
                    //   height: 95,
                    //   description: 'Descripción 16',
                    //   imagePath: 'assets/4.jpg',
                    // ),
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
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 20.0),
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
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

  const Cards({Key? key, required this.description, required this.imagePath,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 20.0),
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}