import 'package:flutter/material.dart';

enum StatusType {
  alive(name: 'Alive', color: Colors.green),
  dead(name: 'Dead', color: Colors.red),
  unknown(name: 'Unknown', color: Colors.grey);

  const StatusType({
    required this.name,
    required this.color,
  });

  final String name;
  final Color color;

  static StatusType fromString(String type) {
    switch (type) {
      case 'Dead':
        return StatusType.dead;
      case 'Alive':
        return StatusType.alive;
      default:
        return StatusType.unknown;
    }
  }
}
