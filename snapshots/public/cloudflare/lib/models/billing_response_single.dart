// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_response_single_result.dart';@immutable final class BillingResponseSingle {const BillingResponseSingle({this.result});

factory BillingResponseSingle.fromJson(Map<String, dynamic> json) { return BillingResponseSingle(
  result: json['result'] != null ? BillingResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final BillingResponseSingleResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
BillingResponseSingle copyWith({BillingResponseSingleResult Function()? result}) { return BillingResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'BillingResponseSingle(result: $result)'; } 
 }
