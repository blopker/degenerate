// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates whether or not multiple captures are supported.
final class ResourceMulticaptureStatus {const ResourceMulticaptureStatus._(this.value);

factory ResourceMulticaptureStatus.fromJson(String json) { return switch (json) {
  'available' => available,
  'unavailable' => unavailable,
  _ => ResourceMulticaptureStatus._(json),
}; }

static const ResourceMulticaptureStatus available = ResourceMulticaptureStatus._('available');

static const ResourceMulticaptureStatus unavailable = ResourceMulticaptureStatus._('unavailable');

static const List<ResourceMulticaptureStatus> values = [available, unavailable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceMulticaptureStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResourceMulticaptureStatus($value)'; } 
 }
/// 
final class ResourceMulticapture {const ResourceMulticapture({required this.status});

factory ResourceMulticapture.fromJson(Map<String, dynamic> json) { return ResourceMulticapture(
  status: ResourceMulticaptureStatus.fromJson(json['status'] as String),
); }

/// Indicates whether or not multiple captures are supported.
final ResourceMulticaptureStatus status;

Map<String, dynamic> toJson() { return {
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
ResourceMulticapture copyWith({ResourceMulticaptureStatus? status}) { return ResourceMulticapture(
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceMulticapture &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ResourceMulticapture(status: $status)'; } 
 }
