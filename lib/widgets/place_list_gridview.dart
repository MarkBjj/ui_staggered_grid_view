import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_staggered_grid_view/models/place.dart';
import 'package:ui_staggered_grid_view/widgets/place_item.dart';

class ListGridView extends StatelessWidget {
  final _placeList = Place.getPlaces();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.0),
      child: StaggeredGridView.countBuilder(
        itemCount: _placeList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        //number of thumbs per row
        crossAxisCount: 3,
        itemBuilder: (context, index) => PlaceItem(_placeList[index]),
        //fit(1) = show all crossAxisCount columns / /fit(2) = show only 2 columns
        staggeredTileBuilder: (_) => const StaggeredTile.fit(1),
        //staggeredTileBuilder: (_) => const StaggeredTile.count(1, 2),
      ),
    );
  }
}
