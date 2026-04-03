// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType {const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType._(this.value);

factory PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType.fromJson(String json) { return switch (json) {
  'min_item_period_end' => minItemPeriodEnd,
  'phase_end' => phaseEnd,
  'timestamp' => timestamp,
  _ => PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType minItemPeriodEnd = PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType._('min_item_period_end');

static const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType phaseEnd = PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType._('phase_end');

static const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType timestamp = PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType._('timestamp');

static const List<PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType> values = [minItemPeriodEnd, phaseEnd, timestamp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType($value)'; } 
 }
@immutable final class PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd {const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd({required this.type, this.timestamp, });

factory PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd(
  timestamp: json['timestamp'] != null ? (json['timestamp'] as num).toInt() : null,
  type: PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType.fromJson(json['type'] as String),
); }

final int? timestamp;

final PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType type;

Map<String, dynamic> toJson() { return {
  'timestamp': ?timestamp,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd copyWith({int Function()? timestamp, PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEndType? type, }) { return PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd(
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd &&
          timestamp == other.timestamp &&
          type == other.type; } 
@override int get hashCode { return Object.hash(timestamp, type); } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsPeriodEnd(timestamp: $timestamp, type: $type)'; } 
 }
