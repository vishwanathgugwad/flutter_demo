import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../global.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'list_fav_page.dart';

class BlogsPage extends StatefulWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  _BlogsPageState createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title:  Text("Home"),
      ),
      body: Column(
        children: [
          Container(
            child:ImageSlideshow(
              width: double.infinity,
              height: 250,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 2000,
              isLoop: true,
              children: [
                Image.asset(
                  'assets/images/image1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'assets/images/image2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'assets/images/image3.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            )
          ),
           Container(height: 20,
           color: Colors.black,),
          // SizedBox(height: 20,),
          Container(
            height: 500,
            child:ListViewFavoritPage() ,
          )
        ],
      ),
    );



  }


}
