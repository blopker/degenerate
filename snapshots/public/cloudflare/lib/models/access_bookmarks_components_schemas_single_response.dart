// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_bookmarks.dart';final class AccessBookmarksComponentsSchemasSingleResponse {const AccessBookmarksComponentsSchemasSingleResponse({this.result});

factory AccessBookmarksComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessBookmarksComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessBookmarks.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessBookmarks? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessBookmarksComponentsSchemasSingleResponse copyWith({AccessBookmarks Function()? result}) { return AccessBookmarksComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessBookmarksComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessBookmarksComponentsSchemasSingleResponse(result: $result)'; } 
 }
