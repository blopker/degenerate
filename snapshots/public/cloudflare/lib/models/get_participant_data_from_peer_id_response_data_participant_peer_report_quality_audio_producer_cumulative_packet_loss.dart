// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss({this.$5OrGreaterEventFraction, this.$10OrGreaterEventFraction, this.$25OrGreaterEventFraction, this.$50OrGreaterEventFraction, this.avg, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss(
  $5OrGreaterEventFraction: json['5_or_greater_event_fraction'] != null ? (json['5_or_greater_event_fraction'] as num).toInt() : null,
  $10OrGreaterEventFraction: json['10_or_greater_event_fraction'] != null ? (json['10_or_greater_event_fraction'] as num).toInt() : null,
  $25OrGreaterEventFraction: json['25_or_greater_event_fraction'] != null ? (json['25_or_greater_event_fraction'] as num).toInt() : null,
  $50OrGreaterEventFraction: json['50_or_greater_event_fraction'] != null ? (json['50_or_greater_event_fraction'] as num).toInt() : null,
  avg: json['avg'] != null ? (json['avg'] as num).toInt() : null,
); }

final int? $5OrGreaterEventFraction;

final int? $10OrGreaterEventFraction;

final int? $25OrGreaterEventFraction;

final int? $50OrGreaterEventFraction;

final int? avg;

Map<String, dynamic> toJson() { return {
  '5_or_greater_event_fraction': ?$5OrGreaterEventFraction,
  '10_or_greater_event_fraction': ?$10OrGreaterEventFraction,
  '25_or_greater_event_fraction': ?$25OrGreaterEventFraction,
  '50_or_greater_event_fraction': ?$50OrGreaterEventFraction,
  'avg': ?avg,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'5_or_greater_event_fraction', '10_or_greater_event_fraction', '25_or_greater_event_fraction', '50_or_greater_event_fraction', 'avg'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss copyWith({int Function()? $5OrGreaterEventFraction, int Function()? $10OrGreaterEventFraction, int Function()? $25OrGreaterEventFraction, int Function()? $50OrGreaterEventFraction, int Function()? avg, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss(
  $5OrGreaterEventFraction: $5OrGreaterEventFraction != null ? $5OrGreaterEventFraction() : this.$5OrGreaterEventFraction,
  $10OrGreaterEventFraction: $10OrGreaterEventFraction != null ? $10OrGreaterEventFraction() : this.$10OrGreaterEventFraction,
  $25OrGreaterEventFraction: $25OrGreaterEventFraction != null ? $25OrGreaterEventFraction() : this.$25OrGreaterEventFraction,
  $50OrGreaterEventFraction: $50OrGreaterEventFraction != null ? $50OrGreaterEventFraction() : this.$50OrGreaterEventFraction,
  avg: avg != null ? avg() : this.avg,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss &&
          $5OrGreaterEventFraction == other.$5OrGreaterEventFraction &&
          $10OrGreaterEventFraction == other.$10OrGreaterEventFraction &&
          $25OrGreaterEventFraction == other.$25OrGreaterEventFraction &&
          $50OrGreaterEventFraction == other.$50OrGreaterEventFraction &&
          avg == other.avg; } 
@override int get hashCode { return Object.hash($5OrGreaterEventFraction, $10OrGreaterEventFraction, $25OrGreaterEventFraction, $50OrGreaterEventFraction, avg); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQualityAudioProducerCumulativePacketLoss(\$5OrGreaterEventFraction: ${$5OrGreaterEventFraction}, \$10OrGreaterEventFraction: ${$10OrGreaterEventFraction}, \$25OrGreaterEventFraction: ${$25OrGreaterEventFraction}, \$50OrGreaterEventFraction: ${$50OrGreaterEventFraction}, avg: $avg)'; } 
 }
