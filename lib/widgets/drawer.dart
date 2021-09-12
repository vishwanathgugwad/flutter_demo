import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://images.unsplash.com/photo-1565018054866-968e244671af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1616&q=80";
    return Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //     padding: EdgeInsets.zero,
            //     child: UserAccountsDrawerHeader(
            //       margin: EdgeInsets.zero,
            //       accountName: Text("vishwanath gugwad"),
            //       accountEmail: Text("vishwanath.gugwad@gmail.com"),
            //       currentAccountPicture: CircleAvatar(
            //         backgroundImage: NetworkImage(imageUrl),
            //       ),
            //
            //     )
            // ),
            Container(
              height: 400,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/dummy.PNG"),
                  fit: BoxFit.fill,

                )
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),   ListTile(
              leading: Icon(CupertinoIcons.phone,color: Colors.white),
              title: Text(
                "Toll Free Numbers",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.paperclip,color: Colors.white),
              title: Text(
                "FeedBack",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white),
              title: Text(
                "Email Us",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
