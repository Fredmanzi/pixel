import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixel/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Blogger',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              fontSize: 20.0,
              color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          iconSize: 30.0,
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            iconSize: 30.0,
            color: Colors.white,
          )
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8.0),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 20.0,
                                    backgroundImage:
                                        AssetImage(posts[index].Poster.imgUrl),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    posts[index].Poster.name,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                posts[index].time,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey[600],
                                    fontSize: 15.0),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          width: 250,
                          height: 250,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(posts[index].postImage),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                posts[index].description,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey[900],
                                    letterSpacing: 1.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                posts[index].views,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                    fontFamily: 'Montserrat'),
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.thumbsUp),
                                        onPressed: () {},
                                        color: Colors.green[900],
                                      ),
                                      Text(
                                        posts[index].likes,
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontFamily: 'Montserrat',
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.thumbsDown),
                                        onPressed: () {},
                                        color: Colors.red[900],
                                      ),
                                      Text(
                                        posts[index].unlikes,
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontFamily: 'Montserrat',
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.share),
                                        onPressed: () {},
                                        color: Colors.deepOrange,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontFamily: 'Montserrat',
                                            fontSize: 13.0),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
