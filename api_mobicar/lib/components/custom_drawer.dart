import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(50, 100, 5, 0),
          children: [
            ListTile(
              title: const Text(
                'Homepage',
                textAlign: TextAlign.end,
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, '/');
              },
            ),
            _nameListDrawer('Menu Item 1'),
            _nameListDrawer('Menu Item 2'),
            _nameListDrawer('Menu Item 3'),
            _nameListDrawer('Menu Item 4'),
          ],
        ),
      ),
    );
  }
}

Widget _nameListDrawer(String title) {
  return ListTile(
    title: Text(
      title,
      textAlign: TextAlign.end,
      style: const TextStyle(
        letterSpacing: 1.5,
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}
