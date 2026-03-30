// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_lan.dart';final class MagicLanModifiedResponse {const MagicLanModifiedResponse({this.result});

factory MagicLanModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicLanModifiedResponse(
  result: json['result'] != null ? MagicLan.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicLan? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicLanModifiedResponse copyWith({MagicLan Function()? result}) { return MagicLanModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicLanModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicLanModifiedResponse(result: $result)'; } 
 }
