import 'package:flutter/material.dart';

class Feed {
  String imgSrc = '';
  String auther = '';
  String postComment = '';

  int likes=0;

  Feed(String imgSrc , String auther , String postComment , int likes) {
    this.imgSrc = imgSrc;
    this.auther = auther;
    this.postComment = postComment;
    this.likes = likes;
  }

}

class FeedWidget extends StatefulWidget {
  const FeedWidget({Key? key , this.feed }) : super(key: key);

  final Feed? feed;
  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin : EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.feed!.imgSrc,
            width: double.infinity,
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: (){}, icon: Icon(Icons.message)),
              IconButton(onPressed: (){}, icon: Icon(Icons.send)),
            ],
          ),
          Text('좋아요 ' + widget.feed!.likes.toString()),
          Text(widget.feed!.auther),
          Text(widget.feed!.postComment),

        ],
      ),
    );
  }
}
