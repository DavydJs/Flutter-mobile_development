import 'package:flutter/material.dart';
import 'package:flutter_app/view_model/projector_unsplash_view_model.dart';
import 'package:flutter_app/widget/image_loading.dart';
class ProjectorUnsplashDetail extends StatelessWidget {
  ProjectorUnsplashViewModel _item;

  ProjectorUnsplashDetail(ProjectorUnsplashViewModel item) {
    this._item = item;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          buildFotosImage(size, context),
        ],
      ),
    );
  }

  Stack buildFotosImage(Size size, BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height,
          width: double.infinity,
          child: SizedBox.expand(
            child: Hero(
              tag: _item.alt_description,
              child: ImageLoading(_item.raw),
            ),
          ),
        ),
        Container(
          height: size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black38],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(50, 50),
                bottomRight: Radius.elliptical(50, 50)),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ],
    );
  }
}
