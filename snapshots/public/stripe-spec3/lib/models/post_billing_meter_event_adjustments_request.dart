// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_meter_event_adjustments_request_cancel.dart';/// Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
@immutable final class PostBillingMeterEventAdjustmentsRequestType {const PostBillingMeterEventAdjustmentsRequestType._(this.value);

factory PostBillingMeterEventAdjustmentsRequestType.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  _ => PostBillingMeterEventAdjustmentsRequestType._(json),
}; }

static const PostBillingMeterEventAdjustmentsRequestType cancel = PostBillingMeterEventAdjustmentsRequestType._('cancel');

static const List<PostBillingMeterEventAdjustmentsRequestType> values = [cancel];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingMeterEventAdjustmentsRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingMeterEventAdjustmentsRequestType($value)'; } 
 }
@immutable final class PostBillingMeterEventAdjustmentsRequest {const PostBillingMeterEventAdjustmentsRequest({required this.eventName, required this.type, this.cancel, this.expand, });

factory PostBillingMeterEventAdjustmentsRequest.fromJson(Map<String, dynamic> json) { return PostBillingMeterEventAdjustmentsRequest(
  cancel: json['cancel'] != null ? PostBillingMeterEventAdjustmentsRequestCancel.fromJson(json['cancel'] as Map<String, dynamic>) : null,
  eventName: json['event_name'] as String,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: PostBillingMeterEventAdjustmentsRequestType.fromJson(json['type'] as String),
); }

/// Specifies which event to cancel.
final PostBillingMeterEventAdjustmentsRequestCancel? cancel;

/// The name of the meter event. Corresponds with the `event_name` field on a meter.
final String eventName;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
final PostBillingMeterEventAdjustmentsRequestType type;

Map<String, dynamic> toJson() { return {
  if (cancel != null) 'cancel': cancel?.toJson(),
  'event_name': eventName,
  'expand': ?expand,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_name') && json['event_name'] is String &&
      json.containsKey('type'); } 
PostBillingMeterEventAdjustmentsRequest copyWith({PostBillingMeterEventAdjustmentsRequestCancel Function()? cancel, String? eventName, List<String> Function()? expand, PostBillingMeterEventAdjustmentsRequestType? type, }) { return PostBillingMeterEventAdjustmentsRequest(
  cancel: cancel != null ? cancel() : this.cancel,
  eventName: eventName ?? this.eventName,
  expand: expand != null ? expand() : this.expand,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingMeterEventAdjustmentsRequest &&
          cancel == other.cancel &&
          eventName == other.eventName &&
          listEquals(expand, other.expand) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(cancel, eventName, Object.hashAll(expand ?? const []), type); } 
@override String toString() { return 'PostBillingMeterEventAdjustmentsRequest(cancel: $cancel, eventName: $eventName, expand: $expand, type: $type)'; } 
 }
