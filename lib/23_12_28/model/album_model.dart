// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class AlbumModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;
  AlbumModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  AlbumModel copyWith({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
  }) {
    return AlbumModel(
      albumId: albumId ?? this.albumId,
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl,
    };
  }

  factory AlbumModel.fromMap(Map<String, dynamic> map) {
    return AlbumModel(
      albumId: map['albumId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      url: map['url'] as String,
      thumbnailUrl: map['thumbnailUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AlbumModel.fromJson(String source) =>
      AlbumModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AlbumModel(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(covariant AlbumModel other) {
    if (identical(this, other)) return true;

    return other.albumId == albumId &&
        other.id == id &&
        other.title == title &&
        other.url == url &&
        other.thumbnailUrl == thumbnailUrl;
  }

  @override
  int get hashCode {
    return albumId.hashCode ^
        id.hashCode ^
        title.hashCode ^
        url.hashCode ^
        thumbnailUrl.hashCode;
  }
}
