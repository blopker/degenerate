// GENERATED CODE - DO NOT MODIFY BY HAND

final class StatusUpdateEditedChangesStatusFrom {const StatusUpdateEditedChangesStatusFrom._(this.value);

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
final class StatusUpdateEditedChangesStatusTo {const StatusUpdateEditedChangesStatusTo._(this.value);

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
final class StatusUpdateEditedChangesStatus {const StatusUpdateEditedChangesStatus({this.from, this.to, });

factory StatusUpdateEditedChangesStatus.fromJson(Map<String, dynamic> json) { return StatusUpdateEditedChangesStatus(
  from: json['from'] != null ? StatusUpdateEditedChangesStatusFrom.fromJson(json['from'] as String) : null,
  to: json['to'] != null ? StatusUpdateEditedChangesStatusTo.fromJson(json['to'] as String) : null,
); }

final StatusUpdateEditedChangesStatusFrom? from;

final StatusUpdateEditedChangesStatusTo? to;

Map<String, dynamic> toJson() { return {
  if (from != null) 'from': from?.toJson(),
  if (to != null) 'to': to?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
StatusUpdateEditedChangesStatus copyWith({StatusUpdateEditedChangesStatusFrom? Function()? from, StatusUpdateEditedChangesStatusTo? Function()? to, }) { return StatusUpdateEditedChangesStatus(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StatusUpdateEditedChangesStatus &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'StatusUpdateEditedChangesStatus(from: $from, to: $to)'; } 
 }
