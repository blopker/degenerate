// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies fleet status details source
@immutable final class DigitalExperienceMonitoringSource {const DigitalExperienceMonitoringSource._(this.value);

factory DigitalExperienceMonitoringSource.fromJson(String json) { return switch (json) {
  'last_seen' => lastSeen,
  'hourly' => hourly,
  'raw' => raw,
  _ => DigitalExperienceMonitoringSource._(json),
}; }

static const DigitalExperienceMonitoringSource lastSeen = DigitalExperienceMonitoringSource._('last_seen');

static const DigitalExperienceMonitoringSource hourly = DigitalExperienceMonitoringSource._('hourly');

static const DigitalExperienceMonitoringSource raw = DigitalExperienceMonitoringSource._('raw');

static const List<DigitalExperienceMonitoringSource> values = [lastSeen, hourly, raw];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DigitalExperienceMonitoringSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringSource($value)'; } 
 }
