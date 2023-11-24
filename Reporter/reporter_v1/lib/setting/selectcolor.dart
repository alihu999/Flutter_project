import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class SelectColor extends StatefulWidget {
  const SelectColor({super.key});

  @override
  State<SelectColor> createState() => _SelectColorState();
}

class _SelectColorState extends State<SelectColor> {
  Color selectedColor = const Color(0xff6b48ff);
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: const Color(0xff6b48ff),
      textColor: const Color(0xff6b48ff),
      backgroundColor: Colors.grey[200],
      trailing: const Icon(Icons.color_lens),
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text(
        "اختر ألوان التطبيق",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 16),
      ),
      children: [
        BlockPicker(
          pickerColor: selectedColor,
          onColorChanged: (value) => selectedColor = value,
          availableColors: const [
            Colors.black,
            Colors.red,
            Colors.green,
            Colors.blue
          ],
        )
      ],
    );
  }
}
