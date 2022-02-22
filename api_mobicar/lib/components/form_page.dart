import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            onSubmitted: () {},
          )
          DropdownButton(items: <String> snapshot.data![index], onChanged: onChanged)
        ],

      ),
    );
  }
}
