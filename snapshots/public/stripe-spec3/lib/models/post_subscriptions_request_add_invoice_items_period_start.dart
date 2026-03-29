// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionsRequestAddInvoiceItemsPeriodStartType {const PostSubscriptionsRequestAddInvoiceItemsPeriodStartType._(this.value);

factory PostSubscriptionsRequestAddInvoiceItemsPeriodStartType.fromJson(String json) { return switch (json) {
  'max_item_period_start' => maxItemPeriodStart,
  'now' => now,
  'timestamp' => timestamp,
  _ => PostSubscriptionsRequestAddInvoiceItemsPeriodStartType._(json),
}; }

static const PostSubscriptionsRequestAddInvoiceItemsPeriodStartType maxItemPeriodStart = PostSubscriptionsRequestAddInvoiceItemsPeriodStartType._('max_item_period_start');

static const PostSubscriptionsRequestAddInvoiceItemsPeriodStartType now = PostSubscriptionsRequestAddInvoiceItemsPeriodStartType._('now');

static const PostSubscriptionsRequestAddInvoiceItemsPeriodStartType timestamp = PostSubscriptionsRequestAddInvoiceItemsPeriodStartType._('timestamp');

static const List<PostSubscriptionsRequestAddInvoiceItemsPeriodStartType> values = [maxItemPeriodStart, now, timestamp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestAddInvoiceItemsPeriodStartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestAddInvoiceItemsPeriodStartType($value)'; } 
 }
final class PostSubscriptionsRequestAddInvoiceItemsPeriodStart {const PostSubscriptionsRequestAddInvoiceItemsPeriodStart({this.timestamp, required this.type, });

factory PostSubscriptionsRequestAddInvoiceItemsPeriodStart.fromJson(Map<String, dynamic> json) { return PostSubscriptionsRequestAddInvoiceItemsPeriodStart(
  timestamp: json['timestamp'] != null ? (json['timestamp'] as num).toInt() : null,
  type: PostSubscriptionsRequestAddInvoiceItemsPeriodStartType.fromJson(json['type'] as String),
); }

final int? timestamp;

final PostSubscriptionsRequestAddInvoiceItemsPeriodStartType type;

Map<String, dynamic> toJson() { return {
  'timestamp': ?timestamp,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionsRequestAddInvoiceItemsPeriodStart copyWith({int Function()? timestamp, PostSubscriptionsRequestAddInvoiceItemsPeriodStartType? type, }) { return PostSubscriptionsRequestAddInvoiceItemsPeriodStart(
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsRequestAddInvoiceItemsPeriodStart &&
          timestamp == other.timestamp &&
          type == other.type; } 
@override int get hashCode { return Object.hash(timestamp, type); } 
@override String toString() { return 'PostSubscriptionsRequestAddInvoiceItemsPeriodStart(timestamp: $timestamp, type: $type)'; } 
 }
