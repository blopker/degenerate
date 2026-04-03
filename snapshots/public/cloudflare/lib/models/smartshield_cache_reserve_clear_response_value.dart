// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_cache_reserve_clear_response_value_result.dart';@immutable final class SmartshieldCacheReserveClearResponseValue {const SmartshieldCacheReserveClearResponseValue({this.result});

factory SmartshieldCacheReserveClearResponseValue.fromJson(Map<String, dynamic> json) { return SmartshieldCacheReserveClearResponseValue(
  result: json['result'] != null ? SmartshieldCacheReserveClearResponseValueResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SmartshieldCacheReserveClearResponseValueResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SmartshieldCacheReserveClearResponseValue copyWith({SmartshieldCacheReserveClearResponseValueResult Function()? result}) { return SmartshieldCacheReserveClearResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldCacheReserveClearResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SmartshieldCacheReserveClearResponseValue(result: $result)'; } 
 }
