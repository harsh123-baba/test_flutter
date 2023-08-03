import 'package:flutter/material.dart';
import "package:test_flutter/widgets/themes.dart";
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .p16
        .color(MyTheme.creamColor)
        .make()
        .p16()
        .w32(context);
  }
}
