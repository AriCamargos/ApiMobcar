import 'dart:convert';

import 'package:api_mobicar/components/text_area_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List> pegarMarca() async {
    var url = Uri.parse(
        'https://parallelum.com.br/fipe/api/v1/carros/marcas'); //Vem já o http
    var response = await http.get(url); //O HTTP irá buscar as infomações da url
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Erro ao carregar dados do servidor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.settings),
        title: const Text('Mobcar'),
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 10, 0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/reserved_page');
                },
                icon: const Icon(
                  Icons.list_outlined,
                ),
              )),
        ],
      ),
      body: Column(children: [
        const TextArea(),
        const Divider(),
        FutureBuilder<List>(
            future: pegarMarca(),
            builder: (context, snapshot) {
              //Isso é um construtor
              if (snapshot.hasError) {
                return const Center(
                  child: Text('Erro ao carregar Usuários'),
                );
              }
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: snapshot
                          .data!.length, //Trás a lista do tamanho que ela é
                      itemBuilder: (context, index) {
                        var marca = snapshot.data![index];
                        return Column(children: [
                          ListTile(
                            leading: ClipRRect(
                              child: Image.network(
                                'https://i.pinimg.com/564x/fe/69/ce/fe69ce366dd9539c7727b4f5ba6230a7.jpg',
                                fit: BoxFit.fill,
                                width: 80,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            title: Text(marca['nome'],
                                style: Theme.of(context).textTheme.headline6),
                            subtitle: Text(
                              marca['codigo'] + '\nView More',
                              style: const TextStyle(color: Colors.blueGrey),
                            ),
                            isThreeLine: true,
                            trailing: const Icon(Icons.more_vert),
                            onTap: () {
                              Navigator.pushNamed(context, '/reserved_page');
                            },
                          ),
                          const Divider(),
                        ]);
                      }),
                );
              }
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5.0,
                  color: Colors.pink,
                ),
              );
            }),
        Container(
          height: 60,
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          width: double.infinity,
          color: Colors.black,
          child: const Text(
            '© 2020. All rights reserved to Mobcar',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 17,
            ),
          ),
        ),
      ]),
    );
  }
}


