import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.star_rate_rounded,
            size: 30,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star_rate_rounded,
            size: 30,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star_rate_rounded,
            size: 30,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star_rate_rounded,
            size: 30,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star_rate_rounded,
            size: 30,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star_border_rounded,
            size: 30,
            color: Colors.yellow[700],
          ),
        ],
      ),
    ]);
  }
}
