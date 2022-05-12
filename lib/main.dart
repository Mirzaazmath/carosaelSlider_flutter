import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'data.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Column(
          children: [
            ImageSlider(),
        ]

        )
      ),
    );
  }
}
class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(padding: EdgeInsets.only( top: 8.0),
        child: CarouselSlider.builder(
          itemCount:5,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child:Image(
                image: AssetImage(images1[index]),fit: BoxFit.fill ,

              ),
            );


          },
          options: CarouselOptions(
            height: 150.0,
           /* enlargeCenterPage: true,*/
            autoPlay: true,
            /*aspectRatio: 16 / 9,*/
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1,
          ),
          ),
          ),
        ]

    );
  }
}


