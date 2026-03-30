// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_bookmarks.dart';final class AccessBookmarksComponentsSchemasResponseCollection {const AccessBookmarksComponentsSchemasResponseCollection({this.result});

factory AccessBookmarksComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessBookmarksComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessBookmarks.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessBookmarks>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessBookmarksComponentsSchemasResponseCollection copyWith({List<AccessBookmarks> Function()? result}) { return AccessBookmarksComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessBookmarksComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessBookmarksComponentsSchemasResponseCollection(result: $result)'; } 
 }
