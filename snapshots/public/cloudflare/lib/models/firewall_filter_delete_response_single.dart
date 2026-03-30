// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_filter_delete_response_single_result.dart';final class FirewallFilterDeleteResponseSingle {const FirewallFilterDeleteResponseSingle({required this.result});

factory FirewallFilterDeleteResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallFilterDeleteResponseSingle(
  result: FirewallFilterDeleteResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final FirewallFilterDeleteResponseSingleResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallFilterDeleteResponseSingle copyWith({FirewallFilterDeleteResponseSingleResult? result}) { return FirewallFilterDeleteResponseSingle(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterDeleteResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallFilterDeleteResponseSingle(result: $result)'; } 
 }
