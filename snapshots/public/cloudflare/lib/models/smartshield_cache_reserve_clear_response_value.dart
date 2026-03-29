// GENERATED CODE - DO NOT MODIFY BY HAND

import 'smartshield_base.dart';final class SmartshieldCacheReserveClearResponseValue {const SmartshieldCacheReserveClearResponseValue({this.result});

factory SmartshieldCacheReserveClearResponseValue.fromJson(Map<String, dynamic> json) { return SmartshieldCacheReserveClearResponseValue(
  result: json['result'] != null ? SmartshieldBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
final SmartshieldBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SmartshieldCacheReserveClearResponseValue copyWith({SmartshieldBase Function()? result}) { return SmartshieldCacheReserveClearResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldCacheReserveClearResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SmartshieldCacheReserveClearResponseValue(result: $result)'; } 
 }
