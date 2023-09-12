import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String asset;
  final double borderWidth;

  const Avatar(
      {super.key,
      required this.size,
      required this.asset,
      this.borderWidth = 0});

  @override
  Widget build(BuildContext context) {
    final fromNetwork =
        asset.startsWith('http://') || asset.startsWith('https://');
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: borderWidth,
            color: Colors.white,
          ),
          image: DecorationImage(
              image: (fromNetwork ? NetworkImage(asset) : AssetImage(asset))
                  as ImageProvider,
              fit: BoxFit.cover)),
    );
  }
}
