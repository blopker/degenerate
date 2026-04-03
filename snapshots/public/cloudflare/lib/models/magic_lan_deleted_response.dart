// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_lan.dart';@immutable final class MagicLanDeletedResponse {const MagicLanDeletedResponse({this.result});

factory MagicLanDeletedResponse.fromJson(Map<String, dynamic> json) { return MagicLanDeletedResponse(
  result: json['result'] != null ? MagicLan.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicLan? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicLanDeletedResponse copyWith({MagicLan Function()? result}) { return MagicLanDeletedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicLanDeletedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicLanDeletedResponse(result: $result)'; } 
 }
