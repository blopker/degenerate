// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecretScanningListAlertsForOrgSort {const SecretScanningListAlertsForOrgSort._(this.value);

factory SecretScanningListAlertsForOrgSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  _ => SecretScanningListAlertsForOrgSort._(json),
}; }

static const SecretScanningListAlertsForOrgSort created = SecretScanningListAlertsForOrgSort._('created');

static const SecretScanningListAlertsForOrgSort updated = SecretScanningListAlertsForOrgSort._('updated');

static const List<SecretScanningListAlertsForOrgSort> values = [created, updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForOrgSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretScanningListAlertsForOrgSort($value)'; } 
 }
