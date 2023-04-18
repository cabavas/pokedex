import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.green[400],
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Positioned(
            left: 80,
            top: 80,
            child: SizedBox(
              height: 150,
              width: 150,
              child:
                  Image.asset('images/pokeball.png', color: Colors.green[200]),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('images/bulbasaur.png'),
          ),
          Positioned(
            right: 25,
            top: 25,
            child: Text(
              '#001',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
          ),
          const Positioned(
            left: 15,
            top: 40,
            child: Text(
              'Bulbasaur',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 90,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text(
                'Grass',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 120,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text(
                'Poison',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
