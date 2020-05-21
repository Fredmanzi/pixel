import 'package:pixel/users.dart';

class Post{

  final User Poster;
  final String time;
  final String postImage;
  final String description;
  final String views;
  final String likes;
  final String unlikes;
  Post({this.Poster,this.time,this.postImage,this.description,this.views,this.likes,this.unlikes});
}



final User greg = User(
  id: 1,
  name: 'Greg',
  imgUrl: 'images/greg.jpg',
);

final User james = User(
  id: 2,
  name: 'James',
  imgUrl: 'images/james.jpg',

);
final User john = User(
  id: 3,
  name: 'John',
  imgUrl: 'images/john.jpg'
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imgUrl: 'images/olivia.jpg'
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imgUrl: 'images/sam.jpg'
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imgUrl: 'images/sophia.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imgUrl: 'images/steven.jpg'
);

//creating posts for different users

List<Post> posts=[
  Post(
    Poster: greg,
    time: '6:00pm',
    postImage: 'images/image1.jpg',
    description: 'Lorem Ipsum has been the industry/s'
        ' standard dummy text ever since the 1500s,',
    views: '45k Views',
      likes: '1k',
      unlikes: '2'
  ),
  Post(
      Poster: james,
      time: '6:20pm',
      postImage: 'images/image2.jpg',
      description: 'Lorem Ipsum has been the industry/s'
          ' standard dummy text ever since the 1500s,',
      views: '4k Views',
      likes: '1k',
      unlikes: '2'
  ),
  Post(
      Poster: john,
      time: '7:00pm',
      postImage: 'images/image3.jpg',
      description: 'Lorem Ipsum has been the industry/s'
          ' standard dummy text ever since the 1500s,',
      views: '44k Views',
      likes: '1k',
      unlikes: '2'
  ),
  Post(
      Poster: olivia,
      time: '8:00pm',
      postImage: 'images/image4.jpg',
      description: 'Lorem Ipsum has been the industry/s'
          ' standard dummy text ever since the 1500s,',
      views: '45k Views',
      likes: '1k',
      unlikes: '2'
  ),
  Post(
      Poster: sam,
      time: '6:09pm',
      postImage: 'images/image5.jpg',
      description: 'Lorem Ipsum has been the industry/s'
          ' standard dummy text ever since the 1500s,',
      views: '20m Views',
      likes: '1k',
      unlikes: '2'
  ),
  Post(
      Poster: sophia,
      time: '9:00pm',
      postImage: 'images/image6.jpg',
      description: 'Lorem Ipsum has been the industry/s'
          ' standard dummy text ever since the 1500s,',
      views: '5m Views',
      likes: '1k',
      unlikes: '2'
  ),
  Post(
      Poster: steven,
      time: '9:30pm',
      postImage: 'images/image7.jpg',
      description: 'Lorem Ipsum has been the industry/s'
          ' standard dummy text ever since the 1500s,',
      views: '9k Views',
      likes: '1k',
      unlikes: '2'
  ),

];