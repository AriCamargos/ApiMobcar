import 'package:api_mobicar/components/inicial_card.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        margin: const EdgeInsets.all(30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 20,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const InicialCardPage(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text('Modelo'), Text('Marca')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [Text('Modelo'), Text('Marca')],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Reservar'),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/* Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Marca',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text('Modelo',
                                style: Theme.of(context).textTheme.headline6),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ano',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Valor',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  child: const Text('Reservar'),
                  onPressed: () {},
                ), */