// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Export the list of connections as a file, limited to 50000 entries.
@immutable final class PageShieldListConnectionsExport {const PageShieldListConnectionsExport._(this.value);

factory PageShieldListConnectionsExport.fromJson(String json) { return switch (json) {
  'csv' => csv,
  _ => PageShieldListConnectionsExport._(json),
}; }

static const PageShieldListConnectionsExport csv = PageShieldListConnectionsExport._('csv');

static const List<PageShieldListConnectionsExport> values = [csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageShieldListConnectionsExport && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageShieldListConnectionsExport($value)'; } 
 }
