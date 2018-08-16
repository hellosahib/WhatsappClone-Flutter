import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new message());

class message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new homeScreen(),
    );
  }
}

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  var _controller1 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Shirley Setia'),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage('https://highape.com/images/uploads/2017/04/Shirley-Setia-HD-Photos.jpg'),
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.video_call), onPressed: null),
          IconButton(icon: Icon(Icons.call), onPressed: null),
          IconButton(icon: Icon(Icons.menu), onPressed: null)
        ],
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(controller: _controller1,onSubmitted: null,decoration: InputDecoration(hintText: 'Enter Message'),)
            ],
          )
        ],
      ),
    );
  }
}


