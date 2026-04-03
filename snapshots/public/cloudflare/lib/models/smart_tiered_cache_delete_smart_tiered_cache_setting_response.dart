// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_base.dart';@immutable final class SmartTieredCacheDeleteSmartTieredCacheSettingResponse {const SmartTieredCacheDeleteSmartTieredCacheSettingResponse({this.result});

factory SmartTieredCacheDeleteSmartTieredCacheSettingResponse.fromJson(Map<String, dynamic> json) { return SmartTieredCacheDeleteSmartTieredCacheSettingResponse(
  result: json['result'] != null ? CacheRulesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SmartTieredCacheDeleteSmartTieredCacheSettingResponse copyWith({CacheRulesBase Function()? result}) { return SmartTieredCacheDeleteSmartTieredCacheSettingResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartTieredCacheDeleteSmartTieredCacheSettingResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SmartTieredCacheDeleteSmartTieredCacheSettingResponse(result: $result)'; } 
 }
