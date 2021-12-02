import 'package:flutter/material.dart';
import 'package:ui_staggered_grid_view/screens/basic_grid.dart';
import 'package:ui_staggered_grid_view/screens/instagram_grid.dart';
import 'package:ui_staggered_grid_view/screens/staggered_grid.dart';

class GridLinks extends StatelessWidget {
  const GridLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          GestureDetector(
            child: const Text('Basic Grid'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BasicGrid(),
                ),
              );
            },
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            child: const Text('Pintrest Grid'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StaggeredGrid(),
                ),
              );
            },
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            child: const Text('Instagram Grid'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InstagramGrid(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
