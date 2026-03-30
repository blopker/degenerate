// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_site.dart';final class MagicSiteSingleResponse {const MagicSiteSingleResponse({this.result});

factory MagicSiteSingleResponse.fromJson(Map<String, dynamic> json) { return MagicSiteSingleResponse(
  result: json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSite? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSiteSingleResponse copyWith({MagicSite Function()? result}) { return MagicSiteSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSiteSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSiteSingleResponse(result: $result)'; } 
 }
