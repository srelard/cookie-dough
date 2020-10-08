import 'package:flutter/material.dart';
import 'package:keks_kuchen_teig/config/palette.dart';
import 'package:keks_kuchen_teig/data/data.dart';
import 'package:keks_kuchen_teig/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              "PlaceGram",
              style: const TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.8,
                  fontFamily: "Billabong"),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                  icon: MdiIcons.mapSearch,
                  iconSize: 30.0,
                  onPressed: () => print("Search")),
              CircleButton(
                  icon: MdiIcons.mapMarkerPath,
                  iconSize: 30,
                  onPressed: () => print("Messenger")),
              CircleButton(
                  icon: MdiIcons.mapMarker,
                  iconSize: 30.0,
                  onPressed: () => print("Search")),
            ]),
        SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser)),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          sliver: SliverToBoxAdapter(
            child: Stories(
              currentUser: currentUser,
              stories: stories,
            ),
          ),
        ),
      ],
    ));
  }
}
