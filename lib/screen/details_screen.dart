import 'package:project_ebook/consttants.dart';
import 'package:project_ebook/widgets/book_rating.dart';
import 'package:project_ebook/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: size.height * .12, left: size.width * .1, right: size.width * .02),
                  height: size.height * .48,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: BookInfo(size: size,)
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .48 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ChapterCard(
                        name: "Money",
                        chapterNumber: 1,
                        tag: "Life is about change",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Power",
                        chapterNumber: 2,
                        tag: "Everything loves power",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Influence",
                        chapterNumber: 3,
                        tag: "Influence easily like never before",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Win",
                        chapterNumber: 4,
                        tag: "Winning is what matters",
                        press: () {},
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: [
                        TextSpan(
                          text: "You might also ",
                        ),
                        TextSpan(
                          text: "like….",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text:
                ),
                Container(
                  margin: EdgeInsets.only(top: this.size.height * .005),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    "Influence",
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: this.size.width * .3,
                          padding: EdgeInsets.only(top: this.size.height * .02),
                          child: Text(
                            "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: this.size.height * .015),
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text("Read", style: TextStyle(fontWeight: FontWeight.bold),),
                          ), 
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.favorite_border, size: 20, color: Colors.grey,),
                            onPressed: () {},
                        ), 
                        BookRating(score: 4.9),
                      ],
                    )
                  ],
                )
              ],
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.transparent,
              child: Image.asset(
                "assets/images/book-1.png",
                height: double.infinity,
                alignment: Alignment.topRight,
                fit: BoxFit.fitWidth,
              ),
          )),
        ],
      ),
    );
  }
}