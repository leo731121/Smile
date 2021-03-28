import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smiles/models/commentsAndReviews.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.builder(
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage(reviews[index].imgPath),
                            ),
                            Icon(Icons.thumb_up),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        reviews[index].comment,
                        style: TextStyle(fontSize: 16, letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
