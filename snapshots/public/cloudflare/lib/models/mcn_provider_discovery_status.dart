// GENERATED CODE - DO NOT MODIFY BY HAND

final class McnProviderDiscoveryStatus {const McnProviderDiscoveryStatus._(this.value);

factory McnProviderDiscoveryStatus.fromJson(String json) { return switch (json) {
  'UNSPECIFIED' => unspecified,
  'PENDING' => pending,
  'DISCOVERING' => discovering,
  'FAILED' => failed,
  'SUCCEEDED' => succeeded,
  _ => McnProviderDiscoveryStatus._(json),
}; }

static const McnProviderDiscoveryStatus unspecified = McnProviderDiscoveryStatus._('UNSPECIFIED');

static const McnProviderDiscoveryStatus pending = McnProviderDiscoveryStatus._('PENDING');

static const McnProviderDiscoveryStatus discovering = McnProviderDiscoveryStatus._('DISCOVERING');

static const McnProviderDiscoveryStatus failed = McnProviderDiscoveryStatus._('FAILED');

static const McnProviderDiscoveryStatus succeeded = McnProviderDiscoveryStatus._('SUCCEEDED');

static const List<McnProviderDiscoveryStatus> values = [unspecified, pending, discovering, failed, succeeded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnProviderDiscoveryStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'McnProviderDiscoveryStatus($value)'; } 
 }
