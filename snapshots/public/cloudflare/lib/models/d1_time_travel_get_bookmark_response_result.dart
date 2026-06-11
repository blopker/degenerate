// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_time_travel_bookmark.dart';@immutable final class D1TimeTravelGetBookmarkResponseResult {const D1TimeTravelGetBookmarkResponseResult({this.bookmark});

factory D1TimeTravelGetBookmarkResponseResult.fromJson(Map<String, dynamic> json) { return D1TimeTravelGetBookmarkResponseResult(
  bookmark: json['bookmark'] != null ? D1TimeTravelBookmark.fromJson(json['bookmark'] as String) : null,
); }

/// A bookmark representing a specific state of the database at a specific point in time.
final D1TimeTravelBookmark? bookmark;

Map<String, dynamic> toJson() { return {
  if (bookmark != null) 'bookmark': bookmark?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bookmark'}.contains(key)); } 
D1TimeTravelGetBookmarkResponseResult copyWith({D1TimeTravelBookmark Function()? bookmark}) { return D1TimeTravelGetBookmarkResponseResult(
  bookmark: bookmark != null ? bookmark() : this.bookmark,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1TimeTravelGetBookmarkResponseResult &&
          bookmark == other.bookmark; } 
@override int get hashCode { return bookmark.hashCode; } 
@override String toString() { return 'D1TimeTravelGetBookmarkResponseResult(bookmark: $bookmark)'; } 
 }
