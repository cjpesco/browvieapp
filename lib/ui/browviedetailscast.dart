import 'package:browvieapp/model/movie.dart';
import 'package:flutter/material.dart';

class BrowvieDetailsCast extends StatelessWidget {
  final Movie movie;

  const BrowvieDetailsCast({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          MovieField(field: 'Cast', value: movie.actors),
          MovieField(field: 'Directors', value: movie.director),
          MovieField(field: 'Awards', value: movie.awards),
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  const MovieField({Key key, this.field, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$field : ',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
