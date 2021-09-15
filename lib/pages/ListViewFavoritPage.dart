
import 'package:flutter/material.dart';


class ListViewFavoritPage extends StatefulWidget {
  const ListViewFavoritPage({Key? key}) : super(key: key);

  @override
  _ListViewFavoritPageState createState() => _ListViewFavoritPageState();
}

class _ListViewFavoritPageState extends State<ListViewFavoritPage> {
  var titleList = [
"success",
    "motivation",
    "hardword",
    "hardword",
    "hardword",
    "hardword",
    "hardword",
  ];
  var decList=[
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
  ];

  var imageList=[

    '/assets/images/dummy.PNG',
    '/assets/images/homeimagekar.png',
    '/assets/images/homeimagekar.png',
    '/assets/images/homeimagekar.png',
    '/assets/images/homeimagekar.png',
    '/assets/images/homeimagekar.png',
    '/assets/images/homeimagekar.png',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return ListView.builder(
      itemCount: imageList.length,
      itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){},
          child: Card(
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(imageList[index]),
                ),Padding(padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titleList[index],
                    style: TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: width,
                      child: Text(
                        decList[index],
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[500],
                        ),
                      ),
                    )
                  ],
                ),)
              ],

            )
          ),
        );

      }

    );
      
        
  }
}
