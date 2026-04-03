// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_pages_response_collection_result.dart';@immutable final class ObservatoryPagesResponseCollection {const ObservatoryPagesResponseCollection({this.result});

factory ObservatoryPagesResponseCollection.fromJson(Map<String, dynamic> json) { return ObservatoryPagesResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ObservatoryPagesResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ObservatoryPagesResponseCollectionResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ObservatoryPagesResponseCollection copyWith({List<ObservatoryPagesResponseCollectionResult> Function()? result}) { return ObservatoryPagesResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryPagesResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ObservatoryPagesResponseCollection(result: $result)'; } 
 }
