import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final _categoryList = [
    'New',
    'Popular',
    'Most Viewed',
    'All Places',
    'Near You',
    'Highest Rated'
  ];
  int _currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      height: 32.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  print("Cat Tapped!");
                  setState(() {
                    _currentSelected = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  color: _currentSelected == index
                      ? Colors.grey[100]
                      : Colors.white,
                  child: Text(
                    _categoryList[index],
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: _currentSelected == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color:
                          _currentSelected == index ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 12.0,
              ),
          itemCount: _categoryList.length),
    );
  }
}
