import 'package:flutter/material.dart';

enum GenderType {
  female(
    name: 'Female',
    color: Colors.pinkAccent,
    icon: Icons.female,
  ),
  male(
    name: 'Male',
    color: Colors.blueAccent,
    icon: Icons.male,
  ),
  genderless(
    name: 'Genderless',
    color: Colors.orange,
    icon: Icons.transgender,
  ),
  unknown(
    name: 'Unknown',
    color: Colors.grey,
    icon: Icons.help_outline,
  );

  const GenderType({
    required this.name,
    required this.color,
    required this.icon,
  });

  final String name;
  final Color color;
  final IconData icon;
}
