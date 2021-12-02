import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderImage extends StatelessWidget {
  final String _imageUrl;
  const HeaderImage(this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            _imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.arrowAltCircleLeft,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            left: 8.0,
            top: 24.0,
          ),
          Positioned(
            //the container allows us to put a white background behind icon
            //IconButtonn brings its own padding - use Icon instead
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36.0)),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30.0,
                ),
              ),
            ),
            right: 10.0,
            bottom: 14.0,
          ),
        ],
      ),
    );
  }
}
