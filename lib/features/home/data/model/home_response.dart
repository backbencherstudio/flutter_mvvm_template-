class HomeResponse {
  final String status;
  final List<HomeItem> items;

  HomeResponse({
    required this.status,
    required this.items,
  });

  factory HomeResponse.fromJson(Map<String, dynamic> json) {
    return HomeResponse(
      status: json['status'] ?? 'success',
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => HomeItem.fromJson(e))
          .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() => {
    'status': status,
    'items': items.map((e) => e.toJson()).toList(),
  };
}

class HomeItem {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  HomeItem({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory HomeItem.fromJson(Map<String, dynamic> json) {
    return HomeItem(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'Untitled',
      description: json['description'] ?? 'No description',
      imageUrl: json['imageUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'imageUrl': imageUrl,
  };
}


HomeResponse dummyHomeResponse = HomeResponse(
  status: "success",
  items: List.generate(
    5,
        (i) => HomeItem(
      id: i,
      title: "Item $i",
      description: "Description for item $i",
      imageUrl: "https://via.placeholder.com/150",
    ),
  ),
);
