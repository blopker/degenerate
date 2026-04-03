// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType.fromJson(String json) { return switch (json) {
  'max_item_period_start' => maxItemPeriodStart,
  'phase_start' => phaseStart,
  'timestamp' => timestamp,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType maxItemPeriodStart = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType._('max_item_period_start');

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType phaseStart = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType._('phase_start');

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType timestamp = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType._('timestamp');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType> values = [maxItemPeriodStart, phaseStart, timestamp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType($value)'; } 
 }
@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart({required this.type, this.timestamp, });

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart(
  timestamp: json['timestamp'] != null ? (json['timestamp'] as num).toInt() : null,
  type: PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType.fromJson(json['type'] as String),
); }

final int? timestamp;

final PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType type;

Map<String, dynamic> toJson() { return {
  'timestamp': ?timestamp,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart copyWith({int Function()? timestamp, PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStartType? type, }) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart(
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart &&
          timestamp == other.timestamp &&
          type == other.type; } 
@override int get hashCode { return Object.hash(timestamp, type); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodStart(timestamp: $timestamp, type: $type)'; } 
 }
