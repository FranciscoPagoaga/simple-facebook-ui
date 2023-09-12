import 'quick_action.dart';
import 'package:facebook_clone/icons/custom_icons.dart';
import 'package:flutter/material.dart';

class QuickActionsMenu extends StatelessWidget {
  const QuickActionsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.center,
      child: Row(
        children: [
          QuickAction(
            iconData: CustomIcons.photos,
            text: 'Gallery',
            colorPrimary: Color(0xFFACE0A5),
            colorSecondary: Color(0xFFEDF7E8),
            colorText: Color(0xFF99BC92),
          ),
          SizedBox(width: 15,),
          QuickAction(
            iconData: CustomIcons.photos,
            text: 'Tag Friends',
            colorPrimary: Color(0xFF99BFE8),
            colorSecondary: Color(0xFFE5EEFD),
            colorText: Color(0xFF7B93A4),
          ),
          SizedBox(width: 15,),
          QuickAction(
            iconData: CustomIcons.photos,
            text: 'Live',
            colorPrimary: Color(0xFFFFA594),
            colorSecondary: Color(0xFFFEF0ED),
            colorText: Color(0xFFCEAA9B),
          ),
        ],
      ),
    );
  }
}
