import 'package:flutter/material.dart';

import 'avatar.dart';

class Story extends StatelessWidget {
  final String bgAsset;
  final String avatarAsset;
  final String name;
  final bool isFirst;

  const Story(
      {super.key,
      required this.bgAsset,
      required this.avatarAsset,
      required this.name,
      required this.isFirst});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: isFirst ? 15 : 0,
        right: 10,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: 100,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 150 - 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(bgAsset), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Avatar(
                      size: 40,
                      asset: avatarAsset,
                      borderWidth: 2.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
