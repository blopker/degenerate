// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecretScanningListAlertsForRepoDirection {const SecretScanningListAlertsForRepoDirection._(this.value);

factory SecretScanningListAlertsForRepoDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => SecretScanningListAlertsForRepoDirection._(json),
}; }

static const SecretScanningListAlertsForRepoDirection asc = SecretScanningListAlertsForRepoDirection._('asc');

static const SecretScanningListAlertsForRepoDirection desc = SecretScanningListAlertsForRepoDirection._('desc');

static const List<SecretScanningListAlertsForRepoDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForRepoDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretScanningListAlertsForRepoDirection($value)'; } 
 }
