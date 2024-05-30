import 'package:flutter/material.dart';

class FashionARPage extends StatefulWidget {
  const FashionARPage({super.key});

  @override
  State<FashionARPage> createState() => _FashionARPageState();
}

class _FashionARPageState extends State<FashionARPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}