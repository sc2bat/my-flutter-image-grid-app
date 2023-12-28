// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ImageModel {
  final String title;
  final String imageUrl;
  final String kind;
  ImageModel({
    required this.title,
    required this.imageUrl,
    required this.kind,
  });

  ImageModel copyWith({
    String? title,
    String? imageUrl,
    String? kind,
  }) {
    return ImageModel(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      kind: kind ?? this.kind,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'imageUrl': imageUrl,
      'kind': kind,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      title: map['title'] as String,
      imageUrl: map['imageUrl'] as String,
      kind: map['kind'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) =>
      ImageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ImageModel(title: $title, imageUrl: $imageUrl, kind: $kind)';

  @override
  bool operator ==(covariant ImageModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.imageUrl == imageUrl &&
        other.kind == kind;
  }

  @override
  int get hashCode => title.hashCode ^ imageUrl.hashCode ^ kind.hashCode;
}
