// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_wan.dart';@immutable final class MagicWansCollectionResponse {const MagicWansCollectionResponse({this.result});

factory MagicWansCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicWansCollectionResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MagicWan.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicWan>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicWansCollectionResponse copyWith({List<MagicWan> Function()? result}) { return MagicWansCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicWansCollectionResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MagicWansCollectionResponse(result: $result)'; } 
 }
