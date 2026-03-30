// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_analytics_query_response_aggregate_result.dart';final class SpectrumAnalyticsQueryResponseAggregate {const SpectrumAnalyticsQueryResponseAggregate({this.result});

factory SpectrumAnalyticsQueryResponseAggregate.fromJson(Map<String, dynamic> json) { return SpectrumAnalyticsQueryResponseAggregate(
  result: (json['result'] as List<dynamic>?)?.map((e) => SpectrumAnalyticsQueryResponseAggregateResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SpectrumAnalyticsQueryResponseAggregateResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SpectrumAnalyticsQueryResponseAggregate copyWith({List<SpectrumAnalyticsQueryResponseAggregateResult> Function()? result}) { return SpectrumAnalyticsQueryResponseAggregate(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumAnalyticsQueryResponseAggregate &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'SpectrumAnalyticsQueryResponseAggregate(result: $result)'; } 
 }
