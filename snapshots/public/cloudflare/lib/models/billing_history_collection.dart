// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_history.dart';final class BillingHistoryCollection {const BillingHistoryCollection({this.result});

factory BillingHistoryCollection.fromJson(Map<String, dynamic> json) { return BillingHistoryCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => BillingHistory.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<BillingHistory>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
BillingHistoryCollection copyWith({List<BillingHistory> Function()? result}) { return BillingHistoryCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingHistoryCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'BillingHistoryCollection(result: $result)'; } 
 }
