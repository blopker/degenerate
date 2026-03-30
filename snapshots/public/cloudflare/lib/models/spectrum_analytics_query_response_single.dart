// GENERATED CODE - DO NOT MODIFY BY HAND

import 'spectrum_analytics_query_response_single_result.dart';final class SpectrumAnalyticsQueryResponseSingle {const SpectrumAnalyticsQueryResponseSingle({this.result});

factory SpectrumAnalyticsQueryResponseSingle.fromJson(Map<String, dynamic> json) { return SpectrumAnalyticsQueryResponseSingle(
  result: json['result'] != null ? SpectrumAnalyticsQueryResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SpectrumAnalyticsQueryResponseSingleResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SpectrumAnalyticsQueryResponseSingle copyWith({SpectrumAnalyticsQueryResponseSingleResult Function()? result}) { return SpectrumAnalyticsQueryResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumAnalyticsQueryResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SpectrumAnalyticsQueryResponseSingle(result: $result)'; } 
 }
