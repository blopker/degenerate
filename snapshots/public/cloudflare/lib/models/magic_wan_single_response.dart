// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_wan.dart';@immutable final class MagicWanSingleResponse {const MagicWanSingleResponse({this.result});

factory MagicWanSingleResponse.fromJson(Map<String, dynamic> json) { return MagicWanSingleResponse(
  result: json['result'] != null ? MagicWan.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicWan? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicWanSingleResponse copyWith({MagicWan Function()? result}) { return MagicWanSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicWanSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicWanSingleResponse(result: $result)'; } 
 }
