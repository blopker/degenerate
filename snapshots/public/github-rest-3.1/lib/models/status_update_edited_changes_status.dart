// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StatusUpdateEditedChangesStatusFrom {const StatusUpdateEditedChangesStatusFrom._(this.value);

factory StatusUpdateEditedChangesStatusFrom.fromJson(String json) { return switch (json) {
  'INACTIVE' => inactive,
  'ON_TRACK' => onTrack,
  'AT_RISK' => atRisk,
  'OFF_TRACK' => offTrack,
  'COMPLETE' => complete,
  'null' => $null,
  _ => StatusUpdateEditedChangesStatusFrom._(json),
}; }

static const StatusUpdateEditedChangesStatusFrom inactive = StatusUpdateEditedChangesStatusFrom._('INACTIVE');

static const StatusUpdateEditedChangesStatusFrom onTrack = StatusUpdateEditedChangesStatusFrom._('ON_TRACK');

static const StatusUpdateEditedChangesStatusFrom atRisk = StatusUpdateEditedChangesStatusFrom._('AT_RISK');

static const StatusUpdateEditedChangesStatusFrom offTrack = StatusUpdateEditedChangesStatusFrom._('OFF_TRACK');

static const StatusUpdateEditedChangesStatusFrom complete = StatusUpdateEditedChangesStatusFrom._('COMPLETE');

static const StatusUpdateEditedChangesStatusFrom $null = StatusUpdateEditedChangesStatusFrom._('null');

static const List<StatusUpdateEditedChangesStatusFrom> values = [inactive, onTrack, atRisk, offTrack, complete, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StatusUpdateEditedChangesStatusFrom && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StatusUpdateEditedChangesStatusFrom($value)'; } 
 }
@immutable final class StatusUpdateEditedChangesStatusTo {const StatusUpdateEditedChangesStatusTo._(this.value);

factory StatusUpdateEditedChangesStatusTo.fromJson(String json) { return switch (json) {
  'INACTIVE' => inactive,
  'ON_TRACK' => onTrack,
  'AT_RISK' => atRisk,
  'OFF_TRACK' => offTrack,
  'COMPLETE' => complete,
  'null' => $null,
  _ => StatusUpdateEditedChangesStatusTo._(json),
}; }

static const StatusUpdateEditedChangesStatusTo inactive = StatusUpdateEditedChangesStatusTo._('INACTIVE');

static const StatusUpdateEditedChangesStatusTo onTrack = StatusUpdateEditedChangesStatusTo._('ON_TRACK');

static const StatusUpdateEditedChangesStatusTo atRisk = StatusUpdateEditedChangesStatusTo._('AT_RISK');

static const StatusUpdateEditedChangesStatusTo offTrack = StatusUpdateEditedChangesStatusTo._('OFF_TRACK');

static const StatusUpdateEditedChangesStatusTo complete = StatusUpdateEditedChangesStatusTo._('COMPLETE');

static const StatusUpdateEditedChangesStatusTo $null = StatusUpdateEditedChangesStatusTo._('null');

static const List<StatusUpdateEditedChangesStatusTo> values = [inactive, onTrack, atRisk, offTrack, complete, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StatusUpdateEditedChangesStatusTo && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StatusUpdateEditedChangesStatusTo($value)'; } 
 }
@immutable final class StatusUpdateEditedChangesStatus {const StatusUpdateEditedChangesStatus({this.from = const Omittable.absent(), this.to = const Omittable.absent(), });

factory StatusUpdateEditedChangesStatus.fromJson(Map<String, dynamic> json) { return StatusUpdateEditedChangesStatus(
  from: json.containsKey('from') ? Omittable(json['from'] != null ? StatusUpdateEditedChangesStatusFrom.fromJson(json['from'] as String) : null) : const Omittable.absent(),
  to: json.containsKey('to') ? Omittable(json['to'] != null ? StatusUpdateEditedChangesStatusTo.fromJson(json['to'] as String) : null) : const Omittable.absent(),
); }

final Omittable<StatusUpdateEditedChangesStatusFrom?> from;

final Omittable<StatusUpdateEditedChangesStatusTo?> to;

Map<String, dynamic> toJson() { return {
  if (from.isPresent) 'from': from.value?.toJson(),
  if (to.isPresent) 'to': to.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from', 'to'}.contains(key)); } 
StatusUpdateEditedChangesStatus copyWith({Omittable<StatusUpdateEditedChangesStatusFrom?>? from, Omittable<StatusUpdateEditedChangesStatusTo?>? to, }) { return StatusUpdateEditedChangesStatus(
  from: from ?? this.from,
  to: to ?? this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StatusUpdateEditedChangesStatus &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'StatusUpdateEditedChangesStatus(from: $from, to: $to)'; } 
 }
