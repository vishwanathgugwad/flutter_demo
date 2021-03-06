import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/models/catalog.dart';



class ItemWidget extends StatelessWidget {
   final Item item;

  const ItemWidget({Key? key, required this.item}) : assert(item != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}"),

    );
  }
}
