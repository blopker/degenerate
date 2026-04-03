// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sorts results in an ascending or descending order.
@immutable final class EmailRoutingDestinationAddressesListDestinationAddressesDirection {const EmailRoutingDestinationAddressesListDestinationAddressesDirection._(this.value);

factory EmailRoutingDestinationAddressesListDestinationAddressesDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => EmailRoutingDestinationAddressesListDestinationAddressesDirection._(json),
}; }

static const EmailRoutingDestinationAddressesListDestinationAddressesDirection asc = EmailRoutingDestinationAddressesListDestinationAddressesDirection._('asc');

static const EmailRoutingDestinationAddressesListDestinationAddressesDirection desc = EmailRoutingDestinationAddressesListDestinationAddressesDirection._('desc');

static const List<EmailRoutingDestinationAddressesListDestinationAddressesDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailRoutingDestinationAddressesListDestinationAddressesDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailRoutingDestinationAddressesListDestinationAddressesDirection($value)'; } 
 }
