// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_wan.dart';final class MagicWanModifiedResponse {const MagicWanModifiedResponse({this.result});

factory MagicWanModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicWanModifiedResponse(
  result: json['result'] != null ? MagicWan.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicWan? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicWanModifiedResponse copyWith({MagicWan Function()? result}) { return MagicWanModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicWanModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicWanModifiedResponse(result: $result)'; } 
 }
