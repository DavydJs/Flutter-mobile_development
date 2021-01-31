import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        floating: true,
        pinned: true,
        snap: false,
        title: Text('ProjectorUnsplash API'));
  }
}
