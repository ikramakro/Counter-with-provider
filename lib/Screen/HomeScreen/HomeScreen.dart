import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'HomeScreenViewModel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<HomeScreenModel>(
      context,
    );

    return Scaffold(
        backgroundColor: countprovider.color[countprovider.index],
        appBar: AppBar(
          title: Text('Counter app With provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<HomeScreenModel>(
                builder: (context, value, child) {
                  return Text(
                    value.Count.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              FloatingActionButton(
                onPressed: () {
                  countprovider.countzero();
                },
                child: const Text('Zero'),
              ),
              const Text(
                'Press the above button to set count to zero',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countprovider.incrementcounter();
            countprovider.colorfun();
          },
          child: const Icon(Icons.add),
        ));
  }
}
