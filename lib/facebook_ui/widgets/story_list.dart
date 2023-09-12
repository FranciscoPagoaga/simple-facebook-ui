import 'package:facebook_clone/facebook_ui/widgets/story_item.dart';
import 'package:flutter/material.dart';

import '../../models/story_model.dart';

final _stories = [
  StoryModel(
    bgAsset: 'assets/wallpapers/1.jpeg',
    avatarAsset: 'assets/users/1.jpg',
    name: 'Laura Leporc',
  ),
  StoryModel(
    bgAsset: 'assets/wallpapers/2.jpeg',
    avatarAsset: 'assets/users/2.jpg',
    name: 'Alix luca',
  ),
  StoryModel(
    bgAsset: 'assets/wallpapers/3.jpeg',
    avatarAsset: 'assets/users/3.jpg',
    name: 'Moa Rotenb',
  ),
  StoryModel(
    bgAsset: 'assets/wallpapers/4.jpeg',
    avatarAsset: 'assets/users/4.jpg',
    name: 'Lucie Polis',
  ),
  StoryModel(
    bgAsset: 'assets/wallpapers/5.jpeg',
    avatarAsset: 'assets/users/5.jpg',
    name: 'Francisco Pagoaga',
  ),
];

class StoryList extends StatelessWidget {
  const StoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return Story(
            bgAsset: story.bgAsset,
            avatarAsset: story.avatarAsset,
            name: story.name,
            isFirst: index==0,
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}
