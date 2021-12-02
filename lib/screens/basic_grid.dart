import 'package:flutter/material.dart';
import 'package:ui_staggered_grid_view/models/place.dart';
//https://www.youtube.com/watch?v=h0H2t7fOGU4&ab_channel=FunwithFlutter

class BasicGrid extends StatelessWidget {
  final imageList = Place.getPlaces();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: GridView.builder(
          itemCount: imageList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) => ImageCard(
            imageList[index],
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard(this.place);
  final Place place;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(place.imgUrl, fit: BoxFit.cover),
    );
  }
}
