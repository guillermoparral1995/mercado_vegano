import 'package:flutter/material.dart';

class Searchbox extends StatefulWidget {
  bool showSearchbox = false;

  Searchbox({required this.showSearchbox, super.key});

  @override
  State<Searchbox> createState() => _SearchboxState();
}

class _SearchboxState extends State<Searchbox> {
  @override
  Widget build(BuildContext context) {
    return widget.showSearchbox
        ? Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
                Container(
                  height: 50,
                  width: 150,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)))),
                )
              ])
        : const SizedBox.shrink();
  }
}
