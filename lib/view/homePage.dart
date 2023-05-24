// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:localdbapp/servise/servise.dart';
import 'package:localdbapp/view/infoPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive"),
      ),
      body: FutureBuilder(
          future: GetCurrencyModel.getcurrency(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InfoPage()));
                        },
                        subtitle: Text(GetCurrencyModel.currencyBox!
                            .getAt(index)!
                            .email
                            .toString()),
                        title: Text(GetCurrencyModel.currencyBox!
                            .getAt(index)!
                            .company!
                            .name
                            .toString()),
                      ),
                    );
                  },
                  itemCount: 10);
            }
          }),
    );
  }
}
