class ProfileSummaryEntity {
  final String appBarTitle;
  final bool isMyItem;

  const ProfileSummaryEntity({
    required this.appBarTitle,
    this.isMyItem = false,
  });
}
