class Choice {
  final String title;
  final String description;
  final Function() onPressed;

  Choice({
    required this.title,
    required this.description,
    required this.onPressed,
  });
}
