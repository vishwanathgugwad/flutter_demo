import 'package:flutter/material.dart';

import 'list_fav_page.dart';
import 'list_post_page.dart';




class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: ListPostPage(),
    );
  }
}
