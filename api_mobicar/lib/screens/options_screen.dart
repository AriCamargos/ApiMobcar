import 'package:flutter/material.dart';

class OptionsScreens extends StatefulWidget {
  const OptionsScreens({Key? key}) : super(key: key);

  @override
  State<OptionsScreens> createState() => _OptionsScreensState();
}

class _OptionsScreensState extends State<OptionsScreens> {
  String dropdownValue = 'View';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['View', 'Edit', 'Delete']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
