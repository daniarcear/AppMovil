import 'package:flutter/material.dart';
import 'package:ayuda/theme.dart';

  //AHORA LA PANTALLA DE DETALLES ES INDEPENDIENTE
//SE CREA UNA CLASE DETAILSCREENDATA, CON DOS ATRIBUTOS O PARÁMETROS
class DetailScreenData {
  final String itemName;
  final String description;

  DetailScreenData(this.itemName, this.description);
}
Widget buildDetailScreen(BuildContext context, DetailScreenData data) {
  return Scaffold(
    appBar: AppBar(
      title: Text(data.itemName),
    ),
  

    body: Container(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0), // Agrega un padding para desplazar los textos hacia arriba
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea el texto a la izquierda
        children: [
          Text(
            'Detalles de ${data.itemName}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Descripción: ${data.description}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

//SE LE AGREGARON ATRIBUTOS PARA QUE SEA DINÁMICA

Widget createCustomCard(
  BuildContext context,
  String groupName,
  String imagePath,
  String title,
  String description,
) {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 180,
          color: Colors.white,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BottomSheet'),
              ],
            ),
          ),
        );
      },
    );
  }

  return Card(
    elevation: 1,
    margin: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Container(
      height: 460,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 72,
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(2, 4, 8, 4),
              leading: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black, // Corrección aquí
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      showBottomSheet(context);
                    },
                    padding: const EdgeInsets.only(top: 12),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(0),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.topLeft,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 16),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget novedadesItem() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: lightTheme().colorScheme.onPrimaryContainer,
    ),
    title: const Text('Actualizacion'),
    subtitle: const Text('Hoy, 10:15 AM'),
    trailing: const Icon(Icons.more_vert),
  );
}

Widget llamadasItem(BuildContext context, String title) {
  const time = '15 de octubre, 12:30';
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => buildDetailScreen(
            context,
            DetailScreenData(title, 'Descripción de $title'),
          ),
        ),
      );
    },
    child: ListTile(
      leading: const CircleAvatar(
        // backgroundColor: MyTheme.lightTheme().colorScheme.onPrimaryContainer,
        backgroundImage: AssetImage('assets/1.jpg'), // Carga la imagen '1.jpg' en el CircleAvatar
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
            child: const Icon(Icons.arrow_outward, size: 16),
          ),
          const SizedBox(width: 4),
          const Text(time, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: const Icon(Icons.call),
    ),
  );
}
