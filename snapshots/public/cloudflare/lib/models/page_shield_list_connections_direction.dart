// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The direction used to sort returned connections.
@immutable final class PageShieldListConnectionsDirection {const PageShieldListConnectionsDirection._(this.value);

factory PageShieldListConnectionsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => PageShieldListConnectionsDirection._(json),
}; }

static const PageShieldListConnectionsDirection asc = PageShieldListConnectionsDirection._('asc');

static const PageShieldListConnectionsDirection desc = PageShieldListConnectionsDirection._('desc');

static const List<PageShieldListConnectionsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageShieldListConnectionsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageShieldListConnectionsDirection($value)'; } 
 }
