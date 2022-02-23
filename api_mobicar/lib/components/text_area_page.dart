import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  const TextArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Text1',
                style: theme.headline6,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Text2',
                style: theme.subtitle1,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/form_page');
                },
                child: const Text(
                  'Add New',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
