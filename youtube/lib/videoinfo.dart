import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoFeed extends StatefulWidget {
  VideoFeed({Key key}) : super(key: key);

  _VideoFeedState createState() => _VideoFeedState();
}

class _VideoFeedState extends State<VideoFeed> {
  List<Map> data = [
    {
      'thumbnail': "https://i.ytimg.com/vi/9HnnAiBvXgs/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDd1MtLpb9i4ILx8s3UMk3Mdder1w",
      'title': 'Blackhole.io | The Game',
      'date': '3 months ago',
      'creator': 'Ibex',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l78S18Lt_6j6pvhGK4VpwWlRZ4qEV9ISmm7wAA=s288-c-k-c0xffffffff-no-rj-mo',
    },
    {
      'thumbnail': "https://i.ytimg.com/vi/fYL3W99dxxU/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDThgxXqck2TAw4GR2yLEW84i8isQ",
      'title': 'Chakli Ude | The Game',
      'date': '2 years ago',
      'creator': 'Ibex',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l78S18Lt_6j6pvhGK4VpwWlRZ4qEV9ISmm7wAA=s288-c-k-c0xffffffff-no-rj-mo',
    },
    {
      'thumbnail': "https://i.ytimg.com/vi/G6pud3lKZBI/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDqTIE6uesKt33rQVTqEd8KQFHEPA",
      'title': 'Annabelle | The Game',
      'date': '1 year ago',
      'creator': 'Ibex',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l78S18Lt_6j6pvhGK4VpwWlRZ4qEV9ISmm7wAA=s288-c-k-c0xffffffff-no-rj-mo',
    },
    {
      'thumbnail': "https://i.ytimg.com/vi/HHNCIIDjK_c/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLCCJ4D70XvUiW9GX7gMhLZewBaGHA",
      'title': 'Make VR gamw in Unity3D',
      'date': '2 years ago',
      'creator': 'Ibex',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l78S18Lt_6j6pvhGK4VpwWlRZ4qEV9ISmm7wAA=s288-c-k-c0xffffffff-no-rj-mo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            children: <Widget>[
              AspectRatio(
                child: Image(
                  image: NetworkImage(data[index]['thumbnail']),
                  centerSlice: Rect.largest,
                ),
                aspectRatio: 16 / 9,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['profile_url']),
                ),
                title: Text(
                  data[index]['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(data[index]['creator']+" | "+data[index]['date'],
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        );
      },
    );
  }
}