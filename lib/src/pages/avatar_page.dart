import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 18.5,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQFVf2qTrygdhA/profile-displayphoto-shrink_100_100/0/1610474474869?e=1620864000&v=beta&t=0ugm3rnLZcEJzTeO-1hqAtgfvnpGvplJMZNnmJJSgAY'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
