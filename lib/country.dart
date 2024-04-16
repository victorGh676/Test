import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  final String newCountry;
  const Country({super.key, required this.newCountry});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Center(
          child: Text(newCountry),
        ),
      ),
      onTap: () {
        print('Hizo click en item: $newCountry');
      },
      onLongPress: () {
        print('Hizo click sostenido en: $newCountry');
      },
      onDoubleTap: () {
        print('Hizo doble click en: $newCountry');
      },
    );
  }
}
