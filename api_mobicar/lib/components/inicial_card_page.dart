import 'package:api_mobicar/screens/detail_page.dart';
import 'package:flutter/material.dart';

class InicialCardPage extends StatelessWidget {
  const InicialCardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                const Icon(Icons.directions_car),
                Text(
                  'Title',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(width: 198),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context, '/form_page');
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            ClipRRect(
              child: Image.network(
                'https://i.pinimg.com/564x/fe/69/ce/fe69ce366dd9539c7727b4f5ba6230a7.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            const Positioned(
              top: 5,
              left: 10,
              child: DetailPage(),
            ),
          ],
        )
      ],
    );
  }
}
