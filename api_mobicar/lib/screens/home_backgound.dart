import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobcar',
          style: TextStyle(color: Colors.blueAccent),
        ),
        iconTheme: const IconThemeData(
          color: Colors.blueAccent,
        ),
      ),
      endDrawer: Theme(
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
                  Navigator.popAndPushNamed(context, '/home_page');
                },
              ),
              _nameListDrawer('Menu Item 1'),
              _nameListDrawer('Menu Item 2'),
              _nameListDrawer('Menu Item 3'),
              _nameListDrawer('Menu Item 4'),
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: containerSubtitle(),
      ),
    );
  }
}

containerSubtitle() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: const [
      SizedBox(
        child: Text(
          '© 2020. All rights reserved to Mobcar',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 17,
          ),
        ),
      ),
    ],
  );
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
