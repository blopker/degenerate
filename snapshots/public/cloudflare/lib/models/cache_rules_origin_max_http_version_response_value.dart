// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_origin_max_http_version.dart';final class CacheRulesOriginMaxHttpVersionResponseValue {const CacheRulesOriginMaxHttpVersionResponseValue({this.result});

factory CacheRulesOriginMaxHttpVersionResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesOriginMaxHttpVersionResponseValue(
  result: json['result'] != null ? CacheRulesOriginMaxHttpVersion.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesOriginMaxHttpVersion? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesOriginMaxHttpVersionResponseValue copyWith({CacheRulesOriginMaxHttpVersion Function()? result}) { return CacheRulesOriginMaxHttpVersionResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesOriginMaxHttpVersionResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesOriginMaxHttpVersionResponseValue(result: $result)'; } 
 }
