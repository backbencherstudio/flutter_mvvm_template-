class HomeUser {
  final int id;
  final String name;
  final String avatar;

  HomeUser({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory HomeUser.fromJson(Map<String, dynamic> json) => HomeUser(
    id: json['id'] ?? 0,
    name: json['name'] ?? '',
    avatar: json['avatar'] ?? '',
  );
}

List<HomeUser> dummyUsers = List.generate(
  4,
      (i) => HomeUser(
    id: i,
    name: "User $i",
    avatar: "https://i.pravatar.cc/150?img=${i + 10}",
  ),
);
