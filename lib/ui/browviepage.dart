import 'package:browvieapp/model/movie.dart';
import 'package:browvieapp/model/movies.dart';
import 'package:flutter/material.dart';

import 'browviedetails.dart';

class BrowviePage extends StatelessWidget {
  final List<Movie> movieList = Movies.getMovies();
  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "I am Legend",
    "300",
    "The Wolf of Wall Street",
    "Interstellar",
    "Game of Thrones",
    "Vikings",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              movieCard(movieList[index], context),
              Positioned(
                top: 10.0,
                child: movieImage(movieList[index].images[0]),
              ),
            ],
          );
        });
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BrowvieDetails(
                      movieName: movie.title,
                      movie: movie,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 35.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          movie.title,
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'Rating: ${movie.imdbRating} / 10',
                        style: mainTextStyle(),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Released: ${movie.released}',
                        style: mainTextStyle(),
                      ),
                      Text(
                        movie.runtime,
                        style: mainTextStyle(),
                      ),
                      Text(
                        movie.rated,
                        style: mainTextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextStyle mainTextStyle() {
    return TextStyle(
      fontSize: 12.0,
      color: Colors.grey,
    );
  }

  Widget movieImage(String imageUrl) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
              imageUrl ?? 'https://source.unsplash.com/100x100/?poster'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

//for future reference
/*  Widget listCard(Movie movie, BuildContext context) {
    return Card(
      elevation: 4.5,
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(movie.images[0]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(13.9),
            ),
            child: null,
          ),
        ),
        trailing: Text('...'),
        title: Text(movie.title),
        subtitle: Text('${movie.year}'),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BrowvieDetails(
                        movieName: movie.title,
                        movie: movie,
                      )));
        },
      ),
    );
  } */
}
