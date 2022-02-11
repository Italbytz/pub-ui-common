import 'package:common_ui/common_ui.dart';
import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({Key? key, required this.section}) : super(key: key);

  final ListSection section;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(section.title),
      children: section.items.map((item) => ListItemTile(item: item)).toList(),
      initiallyExpanded: true,
    );
  }
}
