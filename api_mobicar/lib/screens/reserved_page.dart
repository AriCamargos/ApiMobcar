import '../components/inicial_card_page.dart';
import 'package:flutter/material.dart';

class ReservedPage extends StatelessWidget {
  const ReservedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
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
                _sizedBox10(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Marca',
                      style: theme.subtitle1,
                    ),
                    const SizedBox(width: 110),
                    Text(
                      'Ano',
                      style: theme.subtitle1,
                    ),
                  ],
                ),
                _sizedBox10(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Modelo',
                      style: theme.subtitle1,
                    ),
                    const SizedBox(width: 100),
                    Text(
                      'Valor',
                      style: theme.subtitle1,
                    ),
                  ],
                ),
                _sizedBox10(),
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

Widget _sizedBox10() {
  return const SizedBox(
    height: 15,
  );
}
