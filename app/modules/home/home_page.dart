import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/pokemon_card/pokemon_card.dart';

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
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
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
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: const EdgeInsets.all(50),
          children: const [
            PokemonCard(),
            PokemonCard(),
            PokemonCard(),
            PokemonCard(),
            PokemonCard(),
            PokemonCard(),
          ],
        ));
  }
}
