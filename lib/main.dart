import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEDF0F6),
        body: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Placgram KekskuchenTeig",
                        style: TextStyle(fontFamily: "Billabong", fontSize: 32),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.live_tv),
                              iconSize: 30,
                              onPressed: () => print("IGTV")),
                          SizedBox(width: 16),
                          IconButton(
                              icon: Icon(Icons.send),
                              iconSize: 30,
                              onPressed: () => print("Direct Message")),
                          LikeButton(),
                        ],
                      )
                    ],
                  ),
                  ProgressButton.icon(iconedButtons: {
                    ButtonState.idle: IconedButton(
                        text: "Send",
                        icon: Icon(Icons.send, color: Colors.white),
                        color: Colors.deepPurple.shade500),
                    ButtonState.loading: IconedButton(
                        text: "Loading", color: Colors.deepPurple.shade700),
                    ButtonState.fail: IconedButton(
                        text: "Failed",
                        icon: Icon(Icons.cancel, color: Colors.white),
                        color: Colors.red.shade300),
                    ButtonState.success: IconedButton(
                        text: "Success",
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        color: Colors.green.shade400)
                  })
                ],
              ),
            ),
          ],
        ));
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Placegram',
      home: FeedScreen(),
    ),
  );
}
