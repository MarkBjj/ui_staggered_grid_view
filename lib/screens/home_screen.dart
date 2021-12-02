import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_staggered_grid_view/widgets/category_list.dart';
import 'package:ui_staggered_grid_view/widgets/grids_links.dart';
import 'package:ui_staggered_grid_view/widgets/place_list_gridview.dart';
import 'package:ui_staggered_grid_view/widgets/search_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15.0,
            ),
            SearchInput(),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: const Text('Where Do You Want To Go?',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left),
            ),
            CategoryList(),
            ListGridView(),
            //PlaceItem(Place),
            const SizedBox(
              height: 15.0,
            ),
            const GridLinks(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green[700],
      elevation: 2.0,
      leading: IconButton(
          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
          icon: const FaIcon(FontAwesomeIcons.plane),
          onPressed: () {
            //print("Icon Pressed");
          }),
      title: const Text('Travel App UI'),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/images/rogerAvatar.png'),
            radius: 22.0,
          ),
        )
      ],
    );
  }
}
