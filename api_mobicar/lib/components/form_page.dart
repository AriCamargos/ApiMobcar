import 'package:api_mobicar/components/inicial_card.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
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
                DropdownButtonFormField(
                  value: null,
                  disabledHint: const Text('Marca'),
                  onChanged: null,
                  items: dropdownItems,
                ),
                DropdownButtonFormField(
                  value: null,
                  disabledHint: const Text('Modelo'),
                  onChanged: null,
                  items: dropdownItems,
                ),
                DropdownButtonFormField(
                  value: null,
                  disabledHint: const Text('Ano'),
                  onChanged: null,
                  items: dropdownItems,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Valor (R\$)'),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: null,
                        side: MaterialStateProperty.all(
                            const BorderSide(style: BorderStyle.solid)),
                      ),
                      child: const Text('Cancelar'),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Salvar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    /*  ),
    ); */
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("USA"), value: "USA"),
    const DropdownMenuItem(child: Text("Canada"), value: "Canada"),
    const DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
    const DropdownMenuItem(child: Text("England"), value: "England"),
  ];
  return menuItems;
}
