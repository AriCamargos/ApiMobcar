import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List> pegarUsuarios() async {
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
        title: const Center(
          child: Text('Mobcar'),
        ),
        leading: const Icon(
          Icons.car_rental_rounded,
        ),
        actions: const [
          Icon(Icons.list_outlined),
        ],
      ),
      body: FutureBuilder<List>(
          future: pegarUsuarios(),
          builder: (context, snapshot) {
            //Isso é um construtor
            if (snapshot.hasError) {
              return const Center(
                child: Text('Erro ao carregar Usuários'),
              );
            }

            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount:
                      snapshot.data!.length, //Trás a lista do tamanho que ela é
                  itemBuilder: (context, index) {
                    var usuario = snapshot.data![index];
                    return Column(children: [
                      ListTile(
                        leading: ClipRRect(
                          child: Image.network(
                            'https://i.pinimg.com/564x/fe/69/ce/fe69ce366dd9539c7727b4f5ba6230a7.jpg',
                            fit: BoxFit.cover,
                            width: 80,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        title: Text(usuario['nome'],
                            style: Theme.of(context).textTheme.headline6),
                        subtitle: Text(usuario['codigo']),
                        trailing: const Icon(Icons.more_vert),
                      ),
                      const Divider(),
                    ]);
                  });
            }
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 5.0,
                color: Colors.pink,
              ),
            );
          }),
    );
  }
}

/* Widget dividerList() {
  return const Divider(
    color: Colors.black38,
    height: 2,
  );
} */


/* class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List> pegarMarcas() async {
    var url = Uri.parse('https://parallelum.com.br/fipe/api/v1/carros/marcas');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Erro ao carregar os dados do servidor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text('Mobcar'),
          ),
          leading: const Icon(Icons.car_rental_rounded),
          actions: const [
            Icon(Icons.list_outlined),
          ],
        ),
        body: FutureBuilder<List>(
          future: pegarMarcas(),
           builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Erro ao carregar Usuários'),
              );
            }

            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var marca = snapshot.data![index];
                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.car_rental,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        marca['nome'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ));
  }
}
 */