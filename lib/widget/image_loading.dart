import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class ImageLoading extends StatelessWidget {
  String raw;

  ImageLoading(String raw) {
    this.raw = raw;
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: raw,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) {
        return Center(
          child: Icon(Icons.error, color: Colors.red),
        );
      },
      placeholder: (context, url) {
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}