import 'package:api_mobicar/components/inicial_card_page.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    Widget _sized15() {
      return const SizedBox(height: 15);
    }

    Widget _createSectionTitle(BuildContext context, String title) {
      return DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              labelText: (title),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            value: null,
            isDense: true,
            items: null,
            onChanged: null),
      );
    }

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
                _sized15(),
                _createSectionTitle(context, 'Marca'),
                _sized15(),
                _createSectionTitle(context, 'Modelo'),
                _sized15(),
                _createSectionTitle(context, 'Ano'),
                _sized15(),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Valor (R\$)',
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
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
    
  }
}
