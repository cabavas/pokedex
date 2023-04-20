import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/home/home_page.dart';

import 'app/modules/pokemon_page/pokemon_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedéx',
      home: PokemonPage(),
    );
  }
}
