import 'package:flutter/material.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff77c84f),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Text('Bulbasaur',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 53),
                  child: Text('#001', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff93d373),
                  ),
                  child: const Text('Grass',
                      style: TextStyle(color: Colors.white)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff93d373),
                  ),
                  child: const Text('Poison',
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(width: 100),
                const Text(
                  'Seed',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 50),
            Center(
              child: Stack(
                children: [
                  Transform.rotate(
                    angle: 60,
                    child: Image.asset(
                      'images/pokeball.png',
                      color: const Color(0xff8bd069),
                      height: 130,
                      width: 130,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 5,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset('images/bulbasaur.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              tabs: const [
                Tab(text: 'About'),
                Tab(text: 'Base Stats'),
                Tab(text: 'Evolution'),
                Tab(text: 'Moves'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
