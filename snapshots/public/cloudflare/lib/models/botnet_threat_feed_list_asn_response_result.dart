// GENERATED CODE - DO NOT MODIFY BY HAND

final class BotnetThreatFeedListAsnResponseResult {const BotnetThreatFeedListAsnResponseResult({this.asn});

factory BotnetThreatFeedListAsnResponseResult.fromJson(Map<String, dynamic> json) { return BotnetThreatFeedListAsnResponseResult(
  asn: json['asn'] != null ? (json['asn'] as num).toInt() : null,
); }

final int? asn;

Map<String, dynamic> toJson() { return {
  'asn': ?asn,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'asn'}.contains(key)); } 
BotnetThreatFeedListAsnResponseResult copyWith({int Function()? asn}) { return BotnetThreatFeedListAsnResponseResult(
  asn: asn != null ? asn() : this.asn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotnetThreatFeedListAsnResponseResult &&
          asn == other.asn; } 
@override int get hashCode { return asn.hashCode; } 
@override String toString() { return 'BotnetThreatFeedListAsnResponseResult(asn: $asn)'; } 
 }
