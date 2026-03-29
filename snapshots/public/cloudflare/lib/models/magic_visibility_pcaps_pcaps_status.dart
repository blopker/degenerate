// GENERATED CODE - DO NOT MODIFY BY HAND

/// The status of the packet capture request.
final class MagicVisibilityPcapsPcapsStatus {const MagicVisibilityPcapsPcapsStatus._(this.value);

factory MagicVisibilityPcapsPcapsStatus.fromJson(String json) { return switch (json) {
  'unknown' => unknown,
  'success' => success,
  'pending' => pending,
  'running' => running,
  'conversion_pending' => conversionPending,
  'conversion_running' => conversionRunning,
  'complete' => complete,
  'failed' => failed,
  _ => MagicVisibilityPcapsPcapsStatus._(json),
}; }

static const MagicVisibilityPcapsPcapsStatus unknown = MagicVisibilityPcapsPcapsStatus._('unknown');

static const MagicVisibilityPcapsPcapsStatus success = MagicVisibilityPcapsPcapsStatus._('success');

static const MagicVisibilityPcapsPcapsStatus pending = MagicVisibilityPcapsPcapsStatus._('pending');

static const MagicVisibilityPcapsPcapsStatus running = MagicVisibilityPcapsPcapsStatus._('running');

static const MagicVisibilityPcapsPcapsStatus conversionPending = MagicVisibilityPcapsPcapsStatus._('conversion_pending');

static const MagicVisibilityPcapsPcapsStatus conversionRunning = MagicVisibilityPcapsPcapsStatus._('conversion_running');

static const MagicVisibilityPcapsPcapsStatus complete = MagicVisibilityPcapsPcapsStatus._('complete');

static const MagicVisibilityPcapsPcapsStatus failed = MagicVisibilityPcapsPcapsStatus._('failed');

static const List<MagicVisibilityPcapsPcapsStatus> values = [unknown, success, pending, running, conversionPending, conversionRunning, complete, failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicVisibilityPcapsPcapsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicVisibilityPcapsPcapsStatus($value)'; } 
 }
