import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
        ));
  }
}
