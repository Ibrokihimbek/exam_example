import 'package:flutter/material.dart';

class BascketPage extends StatefulWidget {
  const BascketPage({super.key});

  @override
  State<BascketPage> createState() => _BascketPageState();
}

class _BascketPageState extends State<BascketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Basket')),
    );
  }
}