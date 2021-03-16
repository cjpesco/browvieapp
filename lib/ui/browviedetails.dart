import 'package:browvieapp/model/movie.dart';
import 'package:flutter/material.dart';

import 'browdetailsheaderposter.dart';
import 'browviedetailscast.dart';
import 'browviedetailsextraposters.dart';
import 'browviedetailsthumbnail.dart';

class BrowvieDetails extends StatelessWidget {
  final String movieName;
  final Movie movie;

  const BrowvieDetails({Key key, this.movieName, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Browvie: ${movie.title}'),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: <Widget>[
          BrowvieDetailsThumbnail(
            thumbnail: movie.images[0],
          ),
          BrowvieDetailsHeaderPoster(
            movie: movie,
          ),
          HorizontalLine(),
          BrowvieDetailsCast(
            movie: movie,
          ),
          HorizontalLine(),
          BrowvieDetailsExtraPosters(
            posters: movie.images,
          ),
        ],
      ),

      // Container(
      //   child: Center(
      //     child: ElevatedButton(
      //       child: Text('Go back ${this.movie.director}'),
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: Container(
        height: 0.5,
        color: Colors.grey,
      ),
    );
  }
}
