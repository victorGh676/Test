import 'package:flutter/material.dart'; //GUI Android-IOS
//import 'package:flutter/cupertino.dart';  //GUI IOS
import 'country.dart';
import 'myapptwo.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MyAppTwo());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  final List<String> countries = [
    'ALEMANIA',
    'USA',
    'FRANCIA',
    'BRASIL',
  ];

  @override
  Widget build(BuildContext context) {
    //return Widget con GUI de la pantalla
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Primera Aplicación',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Titulo AppBar',
                style: TextStyle(color: Colors.white)),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  print('Presionó el boton Search');
                },
                icon: Icon(Icons.search),
                color: Color.fromARGB(255, 94, 253, 200),
                tooltip: 'Buscar',
              ),
              IconButton(
                onPressed: () {
                  print('Presionó el boton CleanS');
                },
                icon: Icon(Icons.cleaning_services),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {
                  print('Presionó el boton Watch');
                },
                icon: Icon(Icons.watch_off),
                color: Colors.green,
              )
            ],
            backgroundColor: const Color.fromARGB(255, 59, 117, 165)),
        /*body: const Center(
          child: Text(
            'Body del Scaffold',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                backgroundColor: Color.fromARGB(255, 77, 255, 7)),
          ),
        ),*/
        // body: const Center(
        //   child: Country(
        //     newCountry: 'Alemania',
        //   ),
        // ),
        // body: const Column(
        //   children: [
        //     Country(newCountry: 'Alemania'),
        //     Country(newCountry: 'Argentina'),
        //     Country(newCountry: 'EEUU'),
        //   ],
        // ),
        body: Column(
            children:
                countries.map((item) => Country(newCountry: item)).toList()),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blueGrey,
                tooltip: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo),
                label: 'Subir Foto',
                backgroundColor: Colors.cyan,
                tooltip: 'Foto'),
            BottomNavigationBarItem(
                icon: Icon(Icons.send_and_archive),
                label: 'Enviar Archivo',
                backgroundColor: Colors.amber,
                tooltip: 'Archivo')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countries.add('Nuevo');
            print('$countries');
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
