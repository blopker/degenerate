// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_site.dart';@immutable final class MagicSiteModifiedResponse {const MagicSiteModifiedResponse({this.result});

factory MagicSiteModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicSiteModifiedResponse(
  result: json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicSite? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicSiteModifiedResponse copyWith({MagicSite Function()? result}) { return MagicSiteModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSiteModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicSiteModifiedResponse(result: $result)'; } 
 }
