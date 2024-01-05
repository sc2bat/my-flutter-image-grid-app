class Photo {
  final int total;
  final int totalHits;
  final List<Hit> hits;

  Photo({required this.total, required this.totalHits, required this.hits});

  factory Photo.fromJson(Map<String, dynamic> json) {
    List<dynamic> hitsList = json['hits'] ?? [];
    List<Hit> hits = hitsList.map((hitJson) => Hit.fromJson(hitJson)).toList();

    return Photo(
      total: json['total'] ?? 0,
      totalHits: json['totalHits'] ?? 0,
      hits: hits,
    );
  }
}

class Hit {
  final int id;
  final String pageURL;
  final String type;
  final String tags;
  final String previewURL;
  final int previewWidth;
  final int previewHeight;
  final String webformatURL;
  final int webformatWidth;
  final int webformatHeight;
  final String largeImageURL;
  final int imageWidth;
  final int imageHeight;
  final int imageSize;
  final int views;
  final int downloads;
  final int collections;
  final int likes;
  final int comments;
  final int userId;
  final String user;
  final String userImageURL;

  Hit({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tags,
    required this.previewURL,
    required this.previewWidth,
    required this.previewHeight,
    required this.webformatURL,
    required this.webformatWidth,
    required this.webformatHeight,
    required this.largeImageURL,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageSize,
    required this.views,
    required this.downloads,
    required this.collections,
    required this.likes,
    required this.comments,
    required this.userId,
    required this.user,
    required this.userImageURL,
  });

  factory Hit.fromJson(Map<String, dynamic> json) {
    return Hit(
      id: json['id'] ?? 0,
      pageURL: json['pageURL'] ?? '',
      type: json['type'] ?? '',
      tags: json['tags'] ?? '',
      previewURL: json['previewURL'] ?? '',
      previewWidth: json['previewWidth'] ?? 0,
      previewHeight: json['previewHeight'] ?? 0,
      webformatURL: json['webformatURL'] ?? '',
      webformatWidth: json['webformatWidth'] ?? 0,
      webformatHeight: json['webformatHeight'] ?? 0,
      largeImageURL: json['largeImageURL'] ?? '',
      imageWidth: json['imageWidth'] ?? 0,
      imageHeight: json['imageHeight'] ?? 0,
      imageSize: json['imageSize'] ?? 0,
      views: json['views'] ?? 0,
      downloads: json['downloads'] ?? 0,
      collections: json['collections'] ?? 0,
      likes: json['likes'] ?? 0,
      comments: json['comments'] ?? 0,
      userId: json['user_id'] ?? 0,
      user: json['user'] ?? '',
      userImageURL: json['userImageURL'] ?? '',
    );
  }
}
