import 'package:facebook_clone/icons/custom_icons.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/publication_model.dart';
import '../models/user_model.dart';
import 'widgets/quick_actions_menu.dart';
import 'widgets/story_list.dart';
import 'widgets/circle_button.dart';
import 'widgets/publication_item.dart';
import 'widgets/status_bar.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    const reactions = Reaction.values;

    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      final reactionIndex = random.integer(Reaction.values.length - 1);
      final publication = Publication(
        user: User(
          avatar: faker.image.image(),
          username: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime( minYear: 2021, maxYear: 2023),
        imageUrl: faker.image.image(),
        commentsCount: random.integer(50000),
        sharesCount: random.integer(50000),
        currentUserReaction: reactions[reactionIndex],
      );

      publications.add(publication);
    }

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
          width: 150,
        ),
        actions: const [
          CircleButton(
            color: Colors.grey,
            iconData: CustomIcons.search,
          ),
          SizedBox(width: 10),
          CircleButton(
            color: Color(0xffFE7574),
            iconData: CustomIcons.bell,
          ),
          SizedBox(width: 10),
          CircleButton(
            color: Color(0xff89B7EB),
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(width: 10),
          CircleButton(
            color: Color(0xff2589D8),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: StatusBar(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: QuickActionsMenu(),
          ),
          const SizedBox(
            height: 20,
          ),
          const StoryList(),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
            itemCount: publications.length,
          ),
        ],
      ),
    );
  }
}
