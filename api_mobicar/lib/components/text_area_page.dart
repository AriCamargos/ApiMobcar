import 'package:api_mobicar/components/form_page.dart';
import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  const TextArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Text1', style: Theme.of(context).textTheme.headline6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Text2'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormPage(),
                    ),
                  );
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
