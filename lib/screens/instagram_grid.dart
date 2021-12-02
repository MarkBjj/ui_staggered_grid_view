import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_staggered_grid_view/models/place.dart';
//https://www.youtube.com/watch?v=h0H2t7fOGU4&ab_channel=FunwithFlutter

class InstagramGrid extends StatelessWidget {
  final imageList = Place.getPlaces();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: StaggeredGridView.countBuilder(
          //underlying grid divisions
          crossAxisCount: 3,
          itemCount: imageList.length,
          itemBuilder: (context, index) => ImageCard(
            imageList[index],
          ),
          //edit to create staggered grid layout
          staggeredTileBuilder: (index) => StaggeredTile.count(
              (index % 4 == 0) ? 2 : 1, (index % 4 == 0) ? 2 : 1),
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
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
