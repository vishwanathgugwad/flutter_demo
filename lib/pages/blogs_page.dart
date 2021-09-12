import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_demo/pages/images_url.dart';


class BlogsPage extends StatefulWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  _BlogsPageState createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {



  int activeIndex = 0;

  final List<String> urlImages = [

    'https://images.unsplash.com/photo-1565018054866-968e244671af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1616&q=80',
    'https://images.unsplash.com/photo-1596176530529-78163a4f7af2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1099&q=80',
    'https://images.unsplash.com/photo-1596176530529-78163a4f7af2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1099&q=80',
    'https://images.unsplash.com/photo-1596796679119-7cf1a9e5448b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
    'https://images.unsplash.com/photo-1596796679119-7cf1a9e5448b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
  ];
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
            child:
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 250,
                 //autoPlay: true,
                enlargeCenterPage: true,
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
