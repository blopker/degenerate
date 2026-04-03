// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt({this.$100msOrGreaterEventFraction, this.$250msOrGreaterEventFraction, this.$500msOrGreaterEventFraction, this.avg, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt(
  $100msOrGreaterEventFraction: json['100ms_or_greater_event_fraction'] != null ? (json['100ms_or_greater_event_fraction'] as num).toDouble() : null,
  $250msOrGreaterEventFraction: json['250ms_or_greater_event_fraction'] != null ? (json['250ms_or_greater_event_fraction'] as num).toDouble() : null,
  $500msOrGreaterEventFraction: json['500ms_or_greater_event_fraction'] != null ? (json['500ms_or_greater_event_fraction'] as num).toDouble() : null,
  avg: json['avg'] != null ? (json['avg'] as num).toDouble() : null,
); }

final double? $100msOrGreaterEventFraction;

final double? $250msOrGreaterEventFraction;

final double? $500msOrGreaterEventFraction;

final double? avg;

Map<String, dynamic> toJson() { return {
  '100ms_or_greater_event_fraction': ?$100msOrGreaterEventFraction,
  '250ms_or_greater_event_fraction': ?$250msOrGreaterEventFraction,
  '500ms_or_greater_event_fraction': ?$500msOrGreaterEventFraction,
  'avg': ?avg,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'100ms_or_greater_event_fraction', '250ms_or_greater_event_fraction', '500ms_or_greater_event_fraction', 'avg'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt copyWith({double Function()? $100msOrGreaterEventFraction, double Function()? $250msOrGreaterEventFraction, double Function()? $500msOrGreaterEventFraction, double Function()? avg, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt(
  $100msOrGreaterEventFraction: $100msOrGreaterEventFraction != null ? $100msOrGreaterEventFraction() : this.$100msOrGreaterEventFraction,
  $250msOrGreaterEventFraction: $250msOrGreaterEventFraction != null ? $250msOrGreaterEventFraction() : this.$250msOrGreaterEventFraction,
  $500msOrGreaterEventFraction: $500msOrGreaterEventFraction != null ? $500msOrGreaterEventFraction() : this.$500msOrGreaterEventFraction,
  avg: avg != null ? avg() : this.avg,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt &&
          $100msOrGreaterEventFraction == other.$100msOrGreaterEventFraction &&
          $250msOrGreaterEventFraction == other.$250msOrGreaterEventFraction &&
          $500msOrGreaterEventFraction == other.$500msOrGreaterEventFraction &&
          avg == other.avg; } 
@override int get hashCode { return Object.hash($100msOrGreaterEventFraction, $250msOrGreaterEventFraction, $500msOrGreaterEventFraction, avg); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativeRtt(\$100msOrGreaterEventFraction: ${$100msOrGreaterEventFraction}, \$250msOrGreaterEventFraction: ${$250msOrGreaterEventFraction}, \$500msOrGreaterEventFraction: ${$500msOrGreaterEventFraction}, avg: $avg)'; } 
 }
