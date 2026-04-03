// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the state of maintenance operations.
@immutable final class R2DataCatalogCatalogMaintenanceState {const R2DataCatalogCatalogMaintenanceState._(this.value);

factory R2DataCatalogCatalogMaintenanceState.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  _ => R2DataCatalogCatalogMaintenanceState._(json),
}; }

static const R2DataCatalogCatalogMaintenanceState enabled = R2DataCatalogCatalogMaintenanceState._('enabled');

static const R2DataCatalogCatalogMaintenanceState disabled = R2DataCatalogCatalogMaintenanceState._('disabled');

static const List<R2DataCatalogCatalogMaintenanceState> values = [enabled, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2DataCatalogCatalogMaintenanceState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2DataCatalogCatalogMaintenanceState($value)'; } 
 }
