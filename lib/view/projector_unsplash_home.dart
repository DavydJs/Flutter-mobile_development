import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/view_model/projector_unsplash_list_view_model.dart';
import 'package:flutter_app/widget/home_appbar.dart';
import 'package:flutter_app/widget/staggared_grid.dart';
class ProjectorUnsplashHomeView extends StatefulWidget {
  @override
  _ProjectorUnsplashHomeViewState createState() =>
      _ProjectorUnsplashHomeViewState();
}

class _ProjectorUnsplashHomeViewState extends State<ProjectorUnsplashHomeView> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProjectorUnsplashListViewModel>(context, listen: false)
        .getFhotos();
  }

  @override
  Widget build(BuildContext context) {
    var projectorUnsplashItem =
    Provider.of<ProjectorUnsplashListViewModel>(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          HomeAppBar(),
          FotosGrid(projectorUnsplashItem: projectorUnsplashItem.fotos),
        ],
      ),
    );
  }
}
