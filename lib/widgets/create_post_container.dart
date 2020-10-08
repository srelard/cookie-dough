import 'package:flutter/material.dart';
import 'package:keks_kuchen_teig/models/models.dart';
import 'package:keks_kuchen_teig/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "Where you want to go?"),
                ),
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () => print("Share"),
                  icon: const Icon(Icons.share_outlined, color: Colors.red),
                  label: Text("Share"),
                ),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(
                  onPressed: () => print("Photo"),
                  icon: const Icon(Icons.photo_library_outlined,
                      color: Colors.green),
                  label: Text("Photo"),
                ),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(
                  onPressed: () => print("Room"),
                  icon: const Icon(Icons.video_call_outlined,
                      color: Colors.purpleAccent),
                  label: Text("Video"),
                ),
              ],
            ),
          )
        ]));
  }
}
