import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/characters/enums/gender_type.dart';
import 'package:rick_and_morty/presentation/characters/enums/status_type.dart';

class CharactersFilterWidget extends StatelessWidget {
  final StatusType? selectedStatus;
  final GenderType? selectedGender;
  final void Function(StatusType? status)? onStatusChanged;
  final void Function(GenderType? gender)? onGenderChanged;

  const CharactersFilterWidget({
    this.selectedStatus,
    this.selectedGender,
    this.onStatusChanged,
    this.onGenderChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const dropdownStyle = TextStyle(color: Colors.white);

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16.0,
      children: [
        DropdownButtonFormField<StatusType>(
          value: selectedStatus,
          onChanged: onStatusChanged,
          decoration: InputDecoration(
            labelText: 'Status',
            labelStyle: dropdownStyle,
            filled: true,
            fillColor: const Color(0xFF3c3e44),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.greenAccent),
            ),
          ),
          dropdownColor: const Color(0xFF272b33),
          style: dropdownStyle,
          iconEnabledColor: Colors.white,
          items: StatusType.values.map((type) {
            return DropdownMenuItem(
              value: type,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: type.color,
                  ),
                  const SizedBox(width: 10),
                  Text(type.name, style: dropdownStyle),
                ],
              ),
            );
          }).toList(),
        ),
        DropdownButtonFormField<GenderType>(
          value: selectedGender,
          onChanged: onGenderChanged,
          decoration: InputDecoration(
            labelText: 'Gender',
            labelStyle: dropdownStyle,
            filled: true,
            fillColor: const Color(0xFF3c3e44),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.greenAccent),
            ),
          ),
          dropdownColor: const Color(0xFF272b33),
          style: dropdownStyle,
          iconEnabledColor: Colors.white,
          items: GenderType.values.map((gender) {
            return DropdownMenuItem(
              value: gender,
              child: Row(
                children: [
                  Icon(gender.icon, color: gender.color),
                  const SizedBox(width: 10),
                  Text(gender.name, style: dropdownStyle),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
