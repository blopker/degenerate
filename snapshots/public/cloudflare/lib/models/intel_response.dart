// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_domain_history.dart';final class IntelResponse {const IntelResponse({this.result});

factory IntelResponse.fromJson(Map<String, dynamic> json) { return IntelResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IntelDomainHistory.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IntelDomainHistory>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelResponse copyWith({List<IntelDomainHistory> Function()? result}) { return IntelResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IntelResponse(result: $result)'; } 
 }
