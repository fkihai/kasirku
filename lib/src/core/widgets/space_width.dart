import 'package:flutter/material.dart';

class SpaceWidth extends StatelessWidget {
  final double width;
  const SpaceWidth({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
