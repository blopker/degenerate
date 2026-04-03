// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Export the list of scripts as a file, limited to 50000 entries.
@immutable final class PageShieldListScriptsExport {const PageShieldListScriptsExport._(this.value);

factory PageShieldListScriptsExport.fromJson(String json) { return switch (json) {
  'csv' => csv,
  _ => PageShieldListScriptsExport._(json),
}; }

static const PageShieldListScriptsExport csv = PageShieldListScriptsExport._('csv');

static const List<PageShieldListScriptsExport> values = [csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageShieldListScriptsExport && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageShieldListScriptsExport($value)'; } 
 }
