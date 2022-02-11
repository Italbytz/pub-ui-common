import 'package:common_ui/common_ui.dart';
import 'package:flutter/material.dart';

class ListItemTile extends StatelessWidget {
  const ListItemTile({Key? key, required this.item}) : super(key: key);

  final ListItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      subtitle: (item.subtitle == null) ? null : Text(item.subtitle!),
      leading: (item.image == null)
          ? null
          : Image.network(item.image!,
              errorBuilder: (context, error, stackTrace) {
              return const Text("No image");
            }),
    );
  }
}
