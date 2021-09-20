
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPostPage extends StatefulWidget {
  const ListPostPage({Key? key}) : super(key: key);

  @override
  _ListPostPageState createState() => _ListPostPageState();
}

class _ListPostPageState extends State<ListPostPage> {
  var titleList = [
    "success",
    "motivation",
    "motivation",
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
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
    "This online DISC assessment is designed to test personality by calculating your personal DISC profile based on your everyday typical behavior.",
  ];

  var imageList=[
    'assets/images/embassy.jpg',
    'assets/images/embassy.jpg',
    'assets/images/foreign.jpg',
    'assets/images/foreign.jpg',
    'assets/images/ganga.jpg',
    'assets/images/heritage.jpg',
    'assets/images/indiagate.jpg',
    'assets/images/namaskarindia.jpg',
    'assets/images/namaskarindia.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width * 0.6;
    double width = 380;
    return ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){},
            child: Card(
                child: Column(
                  children: [
                    Container(
                      color: Colors.black,
                      width: width,
                      height: 250,
                      child: Image.asset(imageList[index]),
                    ),Padding(padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text(titleList[index],
                          //   style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),
                          // ),
                          SizedBox(height: 10,),
                          Container(
                            width: width,
                            child: Text(
                              decList[index],
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
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
