import 'package:flutter/material.dart';

class BrowvieDetailsThumbnail extends StatelessWidget {
  final String thumbnail;

  const BrowvieDetailsThumbnail({Key key, this.thumbnail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(thumbnail),
                fit: BoxFit.cover,
              )),
            ),
            Icon(
              Icons.play_circle_outline,
              size: 100,
              color: Colors.white,
            ),
          ],
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x00f5f5f5),
                Color(0xfff5f5f5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}
