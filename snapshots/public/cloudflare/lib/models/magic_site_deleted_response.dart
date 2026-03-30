// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_site.dart';final class MagicSiteDeletedResponse {const MagicSiteDeletedResponse({this.result});

factory MagicSiteDeletedResponse.fromJson(Map<String, dynamic> json) { return MagicSiteDeletedResponse(
  result: json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSite? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSiteDeletedResponse copyWith({MagicSite Function()? result}) { return MagicSiteDeletedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSiteDeletedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSiteDeletedResponse(result: $result)'; } 
 }
