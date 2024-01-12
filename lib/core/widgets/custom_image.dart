import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../utility/constants/colors.dart';

class CustomImage extends StatelessWidget {
  final String imgUrl;
  double? imgHeight;
  double? imgWidth;
  BoxFit? imgFit;
  BoxShape boxShape;
  double borderRadius;

  CustomImage({
    super.key,
    required this.imgUrl,
    this.imgHeight,
    this.imgWidth = 348,
    this.imgFit,
    this.boxShape = BoxShape.rectangle,
    this.borderRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imgWidth,
      height: imgHeight,
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
                image: imageProvider,
                fit: imgFit ?? BoxFit.cover,
              ),
          ),
        ),
        placeholder: (context, url) => Transform.scale(
            scale: 0.2,
            child: const CircularProgressIndicator(
              color: kBaseColor,
            )),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
