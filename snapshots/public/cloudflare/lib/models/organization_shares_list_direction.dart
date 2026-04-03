// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OrganizationSharesListDirection {const OrganizationSharesListDirection._(this.value);

factory OrganizationSharesListDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => OrganizationSharesListDirection._(json),
}; }

static const OrganizationSharesListDirection asc = OrganizationSharesListDirection._('asc');

static const OrganizationSharesListDirection desc = OrganizationSharesListDirection._('desc');

static const List<OrganizationSharesListDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationSharesListDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationSharesListDirection($value)'; } 
 }
