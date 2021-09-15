import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../global.dart';
import 'account_page.dart';

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

            decoration: BoxDecoration(
              boxShadow: [ //background color of box
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8.0, // soften the shadow
                  spreadRadius: 12.0, //extend the shadow
                  offset: Offset(
                    -10.0, // Move to right 10  horizontally
                    -5.0, // Move to bottom 10 Vertically
                  ),
                )
              ],

                borderRadius: BorderRadius.circular(16.0),

                //color: Colors.black,

            ),
            child:
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                 //autoPlay: true,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayInterval: Duration(seconds: 2),
                onPageChanged: (index, reason)=>
                    setState(()=>activeIndex=index),
              ),


                itemCount: urlImages.length,
                itemBuilder: (context, index , realIndex){
              final urlImage = urlImages[index];
              return
                buildImage(urlImage,index);
                },


               ),
          ),
           SizedBox(height: 20,),
          buildIndicator(),


        ],
      ),
    );



  }
  
  
  


  Widget buildImage(String urlImage, int index)=>Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    child: Image.network(urlImage,
      fit: BoxFit.cover
    ),

  );

 Widget buildIndicator()=>AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect:JumpingDotEffect(
        activeDotColor: Colors.deepPurple,
        dotWidth: 10,
        dotHeight: 10
      ));

}


