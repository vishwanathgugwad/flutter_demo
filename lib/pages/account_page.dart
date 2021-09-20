import 'package:flutter/material.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
 var items = ["iam a boy","iam a gial","iam a dog","iam the god"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        initialIndex: 0,
        child:
        Scaffold(
appBar: AppBar(
  title: Text("Social"),
  //centerTitle: true,
  //elevation: 5,
  bottom: TabBar(
    isScrollable: true,
    indicatorColor: Colors.white70,
    indicatorPadding: const EdgeInsets.all(2.0),
    //  The size of the indicator is same as the size of the text
    // indicatorSize: TabBarIndicatorSize.label,
    indicatorWeight: 5.0,

    tabs: <Widget>[
      Tab(text: 'Facebook', icon: Icon(Icons.facebook)),
      Tab(text: 'Twitter', icon: Icon(Icons.music_note)),
      Tab(text: 'Instagram', icon: Icon(Icons.search)),

    ],
  ),

),
body: TabBarView(
  children: [
    Center(child: Text('Facebook Posts',style: TextStyle(fontSize: 25),)),
    Center(child: Text('Twitter Posts',style: TextStyle(fontSize: 25))),
    Center(child: Text('Instagram Posts',style: TextStyle(fontSize: 25))),
  ],

),
        )
    );
  }
}
