// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_base.dart';final class ZoneCacheSettingsDeleteVariantsSettingResponse {const ZoneCacheSettingsDeleteVariantsSettingResponse({this.result});

factory ZoneCacheSettingsDeleteVariantsSettingResponse.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsDeleteVariantsSettingResponse(
  result: json['result'] != null ? CacheRulesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.
final CacheRulesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZoneCacheSettingsDeleteVariantsSettingResponse copyWith({CacheRulesBase Function()? result}) { return ZoneCacheSettingsDeleteVariantsSettingResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsDeleteVariantsSettingResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsDeleteVariantsSettingResponse(result: $result)'; } 
 }
