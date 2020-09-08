import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';


class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(movie.title, style: Theme.of(context).textTheme.headline5),
                SizedBox(
                  height:kDefaultPadding / 2,
                ),
                Row(
                  children: <Widget> [
                    Text("${movie.year}",
                    style: TextStyle(color:kTextLightColor),
                    ),
                    SizedBox(width:kDefaultPadding / 2),
                    
                    Text("pg-13",
                    style: TextStyle(color:kTextLightColor),
                    ),
                    SizedBox(width:kDefaultPadding / 2),

                    Text("2h 32min",
                    style: TextStyle(color:kTextLightColor),
                    ),
                    SizedBox(width:kDefaultPadding / 2),

                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: null, 
              color: kSecondaryColor,
              child: Icon(Icons.add,size: 28,color:Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}