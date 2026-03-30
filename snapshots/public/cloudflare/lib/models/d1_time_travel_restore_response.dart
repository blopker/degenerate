// GENERATED CODE - DO NOT MODIFY BY HAND

import 'd1_time_travel_bookmark.dart';/// Response from a time travel restore operation.
final class D1TimeTravelRestoreResponse {const D1TimeTravelRestoreResponse({this.bookmark, this.message, this.previousBookmark, });

factory D1TimeTravelRestoreResponse.fromJson(Map<String, dynamic> json) { return D1TimeTravelRestoreResponse(
  bookmark: json['bookmark'] != null ? D1TimeTravelBookmark.fromJson(json['bookmark'] as String) : null,
  message: json['message'] as String?,
  previousBookmark: json['previous_bookmark'] != null ? D1TimeTravelBookmark.fromJson(json['previous_bookmark'] as String) : null,
); }

/// A bookmark representing a specific state of the database at a specific point in time.
final D1TimeTravelBookmark? bookmark;

/// A message describing the result of the restore operation.
final String? message;

/// A bookmark representing a specific state of the database at a specific point in time.
final D1TimeTravelBookmark? previousBookmark;

Map<String, dynamic> toJson() { return {
  if (bookmark != null) 'bookmark': bookmark?.toJson(),
  'message': ?message,
  if (previousBookmark != null) 'previous_bookmark': previousBookmark?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bookmark', 'message', 'previous_bookmark'}.contains(key)); } 
D1TimeTravelRestoreResponse copyWith({D1TimeTravelBookmark Function()? bookmark, String Function()? message, D1TimeTravelBookmark Function()? previousBookmark, }) { return D1TimeTravelRestoreResponse(
  bookmark: bookmark != null ? bookmark() : this.bookmark,
  message: message != null ? message() : this.message,
  previousBookmark: previousBookmark != null ? previousBookmark() : this.previousBookmark,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1TimeTravelRestoreResponse &&
          bookmark == other.bookmark &&
          message == other.message &&
          previousBookmark == other.previousBookmark; } 
@override int get hashCode { return Object.hash(bookmark, message, previousBookmark); } 
@override String toString() { return 'D1TimeTravelRestoreResponse(bookmark: $bookmark, message: $message, previousBookmark: $previousBookmark)'; } 
 }
