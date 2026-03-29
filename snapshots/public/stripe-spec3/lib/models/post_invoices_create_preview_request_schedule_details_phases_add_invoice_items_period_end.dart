// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType.fromJson(String json) { return switch (json) {
  'min_item_period_end' => minItemPeriodEnd,
  'phase_end' => phaseEnd,
  'timestamp' => timestamp,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType minItemPeriodEnd = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType._('min_item_period_end');

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType phaseEnd = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType._('phase_end');

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType timestamp = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType._('timestamp');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType> values = [minItemPeriodEnd, phaseEnd, timestamp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType($value)'; } 
 }
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd({this.timestamp, required this.type, });

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd(
  timestamp: json['timestamp'] != null ? (json['timestamp'] as num).toInt() : null,
  type: PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType.fromJson(json['type'] as String),
); }

final int? timestamp;

final PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType type;

Map<String, dynamic> toJson() { return {
  'timestamp': ?timestamp,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd copyWith({int Function()? timestamp, PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEndType? type, }) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd(
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd &&
          timestamp == other.timestamp &&
          type == other.type; } 
@override int get hashCode { return Object.hash(timestamp, type); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsPeriodEnd(timestamp: $timestamp, type: $type)'; } 
 }
