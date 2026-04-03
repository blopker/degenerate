// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_schemas_rule.dart';@immutable final class FirewallResponseSingle {const FirewallResponseSingle({this.result});

factory FirewallResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallResponseSingle(
  result: json['result'] != null ? FirewallSchemasRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final FirewallSchemasRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallResponseSingle copyWith({FirewallSchemasRule Function()? result}) { return FirewallResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallResponseSingle(result: $result)'; } 
 }
