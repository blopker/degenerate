// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_dos_event_create_bulk_with_relationships_request_data_indicators.dart';import 'post_dos_event_create_bulk_with_relationships_request_data_raw.dart';final class PostDosEventCreateBulkWithRelationshipsRequestData {const PostDosEventCreateBulkWithRelationshipsRequestData({this.accountId, this.attacker, this.attackerCountry, required this.category, this.datasetId, required this.date, required this.event, this.indicator, this.indicatorType, this.indicators, this.insight, required this.raw, this.tags, this.targetCountry, this.targetIndustry, required this.tlp, });

factory PostDosEventCreateBulkWithRelationshipsRequestData.fromJson(Map<String, dynamic> json) { return PostDosEventCreateBulkWithRelationshipsRequestData(
  accountId: json['accountId'] != null ? (json['accountId'] as num).toDouble() : null,
  attacker: json['attacker'] as String?,
  attackerCountry: json['attackerCountry'] as String?,
  category: json['category'] as String,
  datasetId: json['datasetId'] as String?,
  date: DateTime.parse(json['date'] as String),
  event: json['event'] as String,
  indicator: json['indicator'] as String?,
  indicatorType: json['indicatorType'] as String?,
  indicators: (json['indicators'] as List<dynamic>?)?.map((e) => PostDosEventCreateBulkWithRelationshipsRequestDataIndicators.fromJson(e as Map<String, dynamic>)).toList(),
  insight: json['insight'] as String?,
  raw: PostDosEventCreateBulkWithRelationshipsRequestDataRaw.fromJson(json['raw'] as Map<String, dynamic>),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  targetCountry: json['targetCountry'] as String?,
  targetIndustry: json['targetIndustry'] as String?,
  tlp: json['tlp'] as String,
); }

final double? accountId;

final String? attacker;

final String? attackerCountry;

final String category;

final String? datasetId;

final DateTime date;

final String event;

final String? indicator;

final String? indicatorType;

/// Array of indicators for this event. Supports multiple indicators per event for complex scenarios.
final List<PostDosEventCreateBulkWithRelationshipsRequestDataIndicators>? indicators;

final String? insight;

final PostDosEventCreateBulkWithRelationshipsRequestDataRaw raw;

final List<String>? tags;

final String? targetCountry;

final String? targetIndustry;

final String tlp;

Map<String, dynamic> toJson() { return {
  'accountId': ?accountId,
  'attacker': ?attacker,
  'attackerCountry': ?attackerCountry,
  'category': category,
  'datasetId': ?datasetId,
  'date': date.toIso8601String(),
  'event': event,
  'indicator': ?indicator,
  'indicatorType': ?indicatorType,
  if (indicators != null) 'indicators': indicators?.map((e) => e.toJson()).toList(),
  'insight': ?insight,
  'raw': raw.toJson(),
  'tags': ?tags,
  'targetCountry': ?targetCountry,
  'targetIndustry': ?targetIndustry,
  'tlp': tlp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('category') && json['category'] is String &&
      json.containsKey('date') && json['date'] is String &&
      json.containsKey('event') && json['event'] is String &&
      json.containsKey('raw') &&
      json.containsKey('tlp') && json['tlp'] is String; } 
PostDosEventCreateBulkWithRelationshipsRequestData copyWith({double Function()? accountId, String? Function()? attacker, String Function()? attackerCountry, String? category, String Function()? datasetId, DateTime? date, String? event, String Function()? indicator, String Function()? indicatorType, List<PostDosEventCreateBulkWithRelationshipsRequestDataIndicators> Function()? indicators, String Function()? insight, PostDosEventCreateBulkWithRelationshipsRequestDataRaw? raw, List<String> Function()? tags, String Function()? targetCountry, String Function()? targetIndustry, String? tlp, }) { return PostDosEventCreateBulkWithRelationshipsRequestData(
  accountId: accountId != null ? accountId() : this.accountId,
  attacker: attacker != null ? attacker() : this.attacker,
  attackerCountry: attackerCountry != null ? attackerCountry() : this.attackerCountry,
  category: category ?? this.category,
  datasetId: datasetId != null ? datasetId() : this.datasetId,
  date: date ?? this.date,
  event: event ?? this.event,
  indicator: indicator != null ? indicator() : this.indicator,
  indicatorType: indicatorType != null ? indicatorType() : this.indicatorType,
  indicators: indicators != null ? indicators() : this.indicators,
  insight: insight != null ? insight() : this.insight,
  raw: raw ?? this.raw,
  tags: tags != null ? tags() : this.tags,
  targetCountry: targetCountry != null ? targetCountry() : this.targetCountry,
  targetIndustry: targetIndustry != null ? targetIndustry() : this.targetIndustry,
  tlp: tlp ?? this.tlp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDosEventCreateBulkWithRelationshipsRequestData &&
          accountId == other.accountId &&
          attacker == other.attacker &&
          attackerCountry == other.attackerCountry &&
          category == other.category &&
          datasetId == other.datasetId &&
          date == other.date &&
          event == other.event &&
          indicator == other.indicator &&
          indicatorType == other.indicatorType &&
          listEquals(indicators, other.indicators) &&
          insight == other.insight &&
          raw == other.raw &&
          listEquals(tags, other.tags) &&
          targetCountry == other.targetCountry &&
          targetIndustry == other.targetIndustry &&
          tlp == other.tlp; } 
@override int get hashCode { return Object.hash(accountId, attacker, attackerCountry, category, datasetId, date, event, indicator, indicatorType, Object.hashAll(indicators ?? const []), insight, raw, Object.hashAll(tags ?? const []), targetCountry, targetIndustry, tlp); } 
@override String toString() { return 'PostDosEventCreateBulkWithRelationshipsRequestData(accountId: $accountId, attacker: $attacker, attackerCountry: $attackerCountry, category: $category, datasetId: $datasetId, date: $date, event: $event, indicator: $indicator, indicatorType: $indicatorType, indicators: $indicators, insight: $insight, raw: $raw, tags: $tags, targetCountry: $targetCountry, targetIndustry: $targetIndustry, tlp: $tlp)'; } 
 }
