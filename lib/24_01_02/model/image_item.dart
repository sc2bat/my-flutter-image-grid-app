// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ImageItem {
  final String imageUrl;
  final String tags;
  ImageItem({
    required this.imageUrl,
    required this.tags,
  });

  ImageItem copyWith({
    String? imageUrl,
    String? tags,
  }) {
    return ImageItem(
      imageUrl: imageUrl ?? this.imageUrl,
      tags: tags ?? this.tags,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'tags': tags,
    };
  }

  factory ImageItem.fromMap(Map<String, dynamic> map) {
    return ImageItem(
      imageUrl: map['imageUrl'] as String,
      tags: map['tags'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageItem.fromJson(String source) =>
      ImageItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ImageItem(imageUrl: $imageUrl, tags: $tags)';

  @override
  bool operator ==(covariant ImageItem other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl && other.tags == tags;
  }

  @override
  int get hashCode => imageUrl.hashCode ^ tags.hashCode;
}
