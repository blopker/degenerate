// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Direction to order results.
@immutable final class ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection {const ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection._(this.value);

factory ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection._(json),
}; }

static const ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection asc = ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection._('asc');

static const ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection desc = ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection._('desc');

static const List<ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection($value)'; } 
 }
