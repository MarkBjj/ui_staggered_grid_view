import 'package:flutter/material.dart';
import 'package:ui_staggered_grid_view/models/place.dart';
import 'package:ui_staggered_grid_view/widgets/detail_about.dart';
import 'package:ui_staggered_grid_view/widgets/detail_icons.dart';
import 'package:ui_staggered_grid_view/widgets/detail_title.dart';
import 'package:ui_staggered_grid_view/widgets/header_image.dart';

class DetailScreen extends StatelessWidget {
  final Place _place;
  DetailScreen(this._place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Detail View'),
      //   backgroundColor: Colors.purple,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Text('Detail Staggered Grid View' + _place.subTitle),
            HeaderImage(_place.imgUrl),
            // const SizedBox(
            //   height: 15.0,
            // ),
            DetailTitle(_place),
            const SizedBox(
              height: 15.0,
            ),
            DetailAbout(_place),
            const SizedBox(
              height: 15.0,
            ),
            DetailIcons(),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              width: double.infinity,
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
