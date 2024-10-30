class Post {
  final String userName;
  final String? userImage;
  final String? eventImage;
  final String eventTitle;
  final String? eventDescription;

  Post({
    required this.userName,
    this.userImage,
    this.eventImage,
    required this.eventTitle,
    required this.eventDescription,
  });
}