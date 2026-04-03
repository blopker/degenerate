// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_event_update_request_raw.dart';@immutable final class PostEventUpdateRequest {const PostEventUpdateRequest({this.attacker, this.attackerCountry, this.category, this.createdAt, this.datasetId, this.date, this.event, this.indicator, this.indicatorType, this.insight, this.raw, this.targetCountry, this.targetIndustry, this.tlp, });

factory PostEventUpdateRequest.fromJson(Map<String, dynamic> json) { return PostEventUpdateRequest(
  attacker: json['attacker'] as String?,
  attackerCountry: json['attackerCountry'] as String?,
  category: json['category'] as String?,
  createdAt: json['createdAt'] != null ? DateTime.parse(json['createdAt'] as String) : null,
  datasetId: json['datasetId'] as String?,
  date: json['date'] != null ? DateTime.parse(json['date'] as String) : null,
  event: json['event'] as String?,
  indicator: json['indicator'] as String?,
  indicatorType: json['indicatorType'] as String?,
  insight: json['insight'] as String?,
  raw: json['raw'] != null ? PostEventUpdateRequestRaw.fromJson(json['raw'] as Map<String, dynamic>) : null,
  targetCountry: json['targetCountry'] as String?,
  targetIndustry: json['targetIndustry'] as String?,
  tlp: json['tlp'] as String?,
); }

final String? attacker;

final String? attackerCountry;

final String? category;

final DateTime? createdAt;

final String? datasetId;

final DateTime? date;

final String? event;

final String? indicator;

final String? indicatorType;

final String? insight;

final PostEventUpdateRequestRaw? raw;

final String? targetCountry;

final String? targetIndustry;

final String? tlp;

Map<String, dynamic> toJson() { return {
  'attacker': ?attacker,
  'attackerCountry': ?attackerCountry,
  'category': ?category,
  if (createdAt != null) 'createdAt': createdAt?.toIso8601String(),
  'datasetId': ?datasetId,
  if (date != null) 'date': date?.toIso8601String(),
  'event': ?event,
  'indicator': ?indicator,
  'indicatorType': ?indicatorType,
  'insight': ?insight,
  if (raw != null) 'raw': raw?.toJson(),
  'targetCountry': ?targetCountry,
  'targetIndustry': ?targetIndustry,
  'tlp': ?tlp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attacker', 'attackerCountry', 'category', 'createdAt', 'datasetId', 'date', 'event', 'indicator', 'indicatorType', 'insight', 'raw', 'targetCountry', 'targetIndustry', 'tlp'}.contains(key)); } 
PostEventUpdateRequest copyWith({String? Function()? attacker, String Function()? attackerCountry, String Function()? category, DateTime Function()? createdAt, String Function()? datasetId, DateTime Function()? date, String Function()? event, String Function()? indicator, String Function()? indicatorType, String Function()? insight, PostEventUpdateRequestRaw Function()? raw, String Function()? targetCountry, String Function()? targetIndustry, String Function()? tlp, }) { return PostEventUpdateRequest(
  attacker: attacker != null ? attacker() : this.attacker,
  attackerCountry: attackerCountry != null ? attackerCountry() : this.attackerCountry,
  category: category != null ? category() : this.category,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  datasetId: datasetId != null ? datasetId() : this.datasetId,
  date: date != null ? date() : this.date,
  event: event != null ? event() : this.event,
  indicator: indicator != null ? indicator() : this.indicator,
  indicatorType: indicatorType != null ? indicatorType() : this.indicatorType,
  insight: insight != null ? insight() : this.insight,
  raw: raw != null ? raw() : this.raw,
  targetCountry: targetCountry != null ? targetCountry() : this.targetCountry,
  targetIndustry: targetIndustry != null ? targetIndustry() : this.targetIndustry,
  tlp: tlp != null ? tlp() : this.tlp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventUpdateRequest &&
          attacker == other.attacker &&
          attackerCountry == other.attackerCountry &&
          category == other.category &&
          createdAt == other.createdAt &&
          datasetId == other.datasetId &&
          date == other.date &&
          event == other.event &&
          indicator == other.indicator &&
          indicatorType == other.indicatorType &&
          insight == other.insight &&
          raw == other.raw &&
          targetCountry == other.targetCountry &&
          targetIndustry == other.targetIndustry &&
          tlp == other.tlp; } 
@override int get hashCode { return Object.hash(attacker, attackerCountry, category, createdAt, datasetId, date, event, indicator, indicatorType, insight, raw, targetCountry, targetIndustry, tlp); } 
@override String toString() { return 'PostEventUpdateRequest(attacker: $attacker, attackerCountry: $attackerCountry, category: $category, createdAt: $createdAt, datasetId: $datasetId, date: $date, event: $event, indicator: $indicator, indicatorType: $indicatorType, insight: $insight, raw: $raw, targetCountry: $targetCountry, targetIndustry: $targetIndustry, tlp: $tlp)'; } 
 }
