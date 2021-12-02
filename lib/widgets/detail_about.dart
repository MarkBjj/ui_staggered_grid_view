import 'package:flutter/material.dart';
import 'package:ui_staggered_grid_view/models/place.dart';

class DetailAbout extends StatelessWidget {
  final Place _place;
  DetailAbout(this._place);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About ' + _place.title,
            style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 11,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 6,
          ),
          GestureDetector(
            onTap: () {
              print('Read more tappped!');
            },
            child: const Text(
              'Read More...',
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
