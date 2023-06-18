import 'package:flutter/material.dart';

class ElementColumn extends StatelessWidget {
  final List<Widget> widgets;

  const ElementColumn({required this.widgets, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20), // Ajouter une marge supérieure
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start, // Aligner les enfants en haut
          children: widgets,
        ),
      ),
    );
  }
}