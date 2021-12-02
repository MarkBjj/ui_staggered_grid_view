import 'package:flutter/material.dart';
import 'package:ui_staggered_grid_view/models/place.dart';
import 'package:ui_staggered_grid_view/screens/detail_screen.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  const PlaceItem(this.place);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(place),
          ),
        );
      },
      child: Stack(children: [
        Container(
          height: place.height,
          //width: 180.0,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage(
                place.imgUrl,
                //'lib/assets/images/rio-de-janeiroP.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  place.title,
                  //'Title',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  place.subTitle,
                  //'Sub title',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
