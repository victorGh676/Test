import 'package:flutter/material.dart';
import 'country.dart';

class MyAppTwo extends StatefulWidget {
  const MyAppTwo({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppTwoState();
}

class _MyAppTwoState extends State<MyAppTwo> {
  // final List<String> countries = [
  //   'ALEMANIA',
  //   'USA',
  //   'FRANCIA',
  //   'BRASIL',
  // ];
  List<String> countries = [];

  @override
  void initState() {
    super.initState();

    countries = ['ARGENTINA', 'BRAZIL', 'EEUU', 'ALEMANIA', 'CANADA'];
  }

  @override
  Widget build(BuildContext context) {
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
        body: Container(
          // width: 90,
          height: 200,
          child: ListView(
              children:
                  countries.map((item) => Country(newCountry: item)).toList()
                  ),
        ),
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
            setState(() {
              countries.add('Nuevo');
            });
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
