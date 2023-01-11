import 'package:flutter/material.dart';
import 'package:quick_notes/src/searchbox/searchbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showSearchInput = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mercado Vegano!'),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _showSearchInput = !_showSearchInput;
                  });
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: Column(
          children: [
            Searchbox(
              showSearchbox: _showSearchInput,
            )
          ],
        ));
  }
}
