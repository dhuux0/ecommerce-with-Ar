import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.chipLabel,
    required this.Icons,
    //required this.chipicon
  });

  final String chipLabel;
  // ignore: prefer_typing_uninitialized_variables
  final Icons;

  //final Icon chipicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Chip(
        //avatar: Icon(Icons.mobile_friendly),
        label: Text(chipLabel),
        backgroundColor: const Color.fromARGB(255, 173, 171, 171),
      ),
    );
  }
}
