import 'package:flutter/material.dart';
import 'package:flutter_app/view_model/projector_unsplash_view_model.dart';
import 'package:flutter_app/view/projector_unsplash_detail.dart';
import 'package:flutter_app/widget/image_loading.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FotosGrid extends StatelessWidget {
  final List<ProjectorUnsplashViewModel> projectorUnsplashItem;

  FotosGrid({this.projectorUnsplashItem});

  @override
  Widget build(BuildContext context) {
    return SliverStaggeredGrid.countBuilder(
      crossAxisCount: 4,
      itemCount: projectorUnsplashItem.length,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 1.0,
      itemBuilder: (context, index) {
        return buildFotosTile(index, context);
      },
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index = 3),
    );
  }

  InkWell buildFotosTile(int index, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    ProjectorUnsplashDetail(projectorUnsplashItem[index])));
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Positioned.fill(
                child: Hero(
              tag: projectorUnsplashItem[index].alt_description,
              child: ImageLoading(projectorUnsplashItem[index].raw),
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      projectorUnsplashItem[index].alt_description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Stack(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      projectorUnsplashItem[index].name,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
