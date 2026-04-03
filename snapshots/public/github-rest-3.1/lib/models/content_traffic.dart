// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Content Traffic
@immutable final class ContentTraffic {const ContentTraffic({required this.path, required this.title, required this.count, required this.uniques, });

factory ContentTraffic.fromJson(Map<String, dynamic> json) { return ContentTraffic(
  path: json['path'] as String,
  title: json['title'] as String,
  count: (json['count'] as num).toInt(),
  uniques: (json['uniques'] as num).toInt(),
); }

final String path;

final String title;

final int count;

final int uniques;

Map<String, dynamic> toJson() { return {
  'path': path,
  'title': title,
  'count': count,
  'uniques': uniques,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('path') && json['path'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('count') && json['count'] is num &&
      json.containsKey('uniques') && json['uniques'] is num; } 
ContentTraffic copyWith({String? path, String? title, int? count, int? uniques, }) { return ContentTraffic(
  path: path ?? this.path,
  title: title ?? this.title,
  count: count ?? this.count,
  uniques: uniques ?? this.uniques,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContentTraffic &&
          path == other.path &&
          title == other.title &&
          count == other.count &&
          uniques == other.uniques; } 
@override int get hashCode { return Object.hash(path, title, count, uniques); } 
@override String toString() { return 'ContentTraffic(path: $path, title: $title, count: $count, uniques: $uniques)'; } 
 }
