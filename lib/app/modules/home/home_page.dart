import 'package:flutter/material.dart';

import '../../repositories/pokemon_model_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> poke() async {
    final pokemonModelRepository = PokemonModelRepository();
    final pokemons = await pokemonModelRepository.buscarTodos();
    print(pokemons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pokedex'),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            const SizedBox(width: 50),
          ],
        ),
        body: GridView(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: const [
            Text('pokemon 1'),
            Text('pokemon 2'),
            Text('pokemon 3'),
            Text('pokemon 4'),
            Text('pokemon 5'),
          ],
        ));
  }
}
