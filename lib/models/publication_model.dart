import 'user_model.dart';

class Publication {
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int commentsCount;
  final int sharesCount;
  final Reaction currentUserReaction;

  Publication({required this.user, required this.title, required this.createdAt, required this.imageUrl, required this.commentsCount, required this.sharesCount, required this.currentUserReaction});
}

enum Reaction {
  like,
  love,
  laughing,
  sad,
  surprised,
  angry,
}
