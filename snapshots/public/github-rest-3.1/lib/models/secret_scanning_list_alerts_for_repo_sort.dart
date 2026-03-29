// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecretScanningListAlertsForRepoSort {const SecretScanningListAlertsForRepoSort._(this.value);

factory SecretScanningListAlertsForRepoSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  _ => SecretScanningListAlertsForRepoSort._(json),
}; }

static const SecretScanningListAlertsForRepoSort created = SecretScanningListAlertsForRepoSort._('created');

static const SecretScanningListAlertsForRepoSort updated = SecretScanningListAlertsForRepoSort._('updated');

static const List<SecretScanningListAlertsForRepoSort> values = [created, updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForRepoSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretScanningListAlertsForRepoSort($value)'; } 
 }
