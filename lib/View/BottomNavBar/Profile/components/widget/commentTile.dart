import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smiles/models/commentsAndReviews.dart';
import 'package:smiles/size_config.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30 * SizeConfig.heightMultiplier,
        child: ListView.builder(
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  width: 90 * SizeConfig.widthMultiplier,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 4 * SizeConfig.imageSizeMultiplier,
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
                        style: TextStyle(
                            fontSize: 1.6 * SizeConfig.textMultiplier,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
