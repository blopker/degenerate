// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Alert frequency (immediate or daily)
@immutable final class PatchEventQueryAlertUpdateRequestFrequency {const PatchEventQueryAlertUpdateRequestFrequency._(this.value);

factory PatchEventQueryAlertUpdateRequestFrequency.fromJson(String json) { return switch (json) {
  'immediate' => immediate,
  'daily' => daily,
  _ => PatchEventQueryAlertUpdateRequestFrequency._(json),
}; }

static const PatchEventQueryAlertUpdateRequestFrequency immediate = PatchEventQueryAlertUpdateRequestFrequency._('immediate');

static const PatchEventQueryAlertUpdateRequestFrequency daily = PatchEventQueryAlertUpdateRequestFrequency._('daily');

static const List<PatchEventQueryAlertUpdateRequestFrequency> values = [immediate, daily];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchEventQueryAlertUpdateRequestFrequency && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchEventQueryAlertUpdateRequestFrequency($value)'; } 
 }
@immutable final class PatchEventQueryAlertUpdateRequest {const PatchEventQueryAlertUpdateRequest({this.enabled, this.frequency, this.notificationType, });

factory PatchEventQueryAlertUpdateRequest.fromJson(Map<String, dynamic> json) { return PatchEventQueryAlertUpdateRequest(
  enabled: json['enabled'] as bool?,
  frequency: json['frequency'] != null ? PatchEventQueryAlertUpdateRequestFrequency.fromJson(json['frequency'] as String) : null,
  notificationType: json['notification_type'] as String?,
); }

/// Whether the alert is enabled
final bool? enabled;

/// Alert frequency (immediate or daily)
final PatchEventQueryAlertUpdateRequestFrequency? frequency;

/// Type of notification (e.g., ans)
final String? notificationType;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (frequency != null) 'frequency': frequency?.toJson(),
  'notification_type': ?notificationType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'frequency', 'notification_type'}.contains(key)); } 
PatchEventQueryAlertUpdateRequest copyWith({bool Function()? enabled, PatchEventQueryAlertUpdateRequestFrequency Function()? frequency, String Function()? notificationType, }) { return PatchEventQueryAlertUpdateRequest(
  enabled: enabled != null ? enabled() : this.enabled,
  frequency: frequency != null ? frequency() : this.frequency,
  notificationType: notificationType != null ? notificationType() : this.notificationType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchEventQueryAlertUpdateRequest &&
          enabled == other.enabled &&
          frequency == other.frequency &&
          notificationType == other.notificationType; } 
@override int get hashCode { return Object.hash(enabled, frequency, notificationType); } 
@override String toString() { return 'PatchEventQueryAlertUpdateRequest(enabled: $enabled, frequency: $frequency, notificationType: $notificationType)'; } 
 }
