class HomeBanner {
  final int id;
  final String imageUrl;
  final String title;

  HomeBanner({
    required this.id,
    required this.imageUrl,
    required this.title,
  });

  factory HomeBanner.fromJson(Map<String, dynamic> json) => HomeBanner(
    id: json['id'] ?? 0,
    imageUrl: json['imageUrl'] ?? '',
    title: json['title'] ?? '',
  );
}

List<HomeBanner> dummyBanners = List.generate(
  3,
      (i) => HomeBanner(
    id: i,
    imageUrl: "https://picsum.photos/id/${i + 10}/400/200",
    title: "Banner $i",
  ),
);
