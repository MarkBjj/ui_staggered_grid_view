import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_staggered_grid_view/models/place.dart';

class DetailTitle extends StatelessWidget {
  final Place place;
  const DetailTitle(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.3),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place.title,
                style: const TextStyle(
                    fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              Text(
                place.subTitle,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(children: [
            IconButton(
              icon: const Icon(
                Icons.star,
                color: Colors.red,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Text(
              '4.5',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ])
        ],
      ),
    );
  }
}
