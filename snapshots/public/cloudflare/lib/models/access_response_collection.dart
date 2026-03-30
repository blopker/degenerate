// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_response_collection_result.dart';final class AccessResponseCollection {const AccessResponseCollection({this.result});

factory AccessResponseCollection.fromJson(Map<String, dynamic> json) { return AccessResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessResponseCollectionResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessResponseCollection copyWith({List<AccessResponseCollectionResult> Function()? result}) { return AccessResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessResponseCollection(result: $result)'; } 
 }
