// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Export the list of cookies as a file, limited to 50000 entries.
@immutable final class PageShieldListCookiesExport {const PageShieldListCookiesExport._(this.value);

factory PageShieldListCookiesExport.fromJson(String json) { return switch (json) {
  'csv' => csv,
  _ => PageShieldListCookiesExport._(json),
}; }

static const PageShieldListCookiesExport csv = PageShieldListCookiesExport._('csv');

static const List<PageShieldListCookiesExport> values = [csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageShieldListCookiesExport && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageShieldListCookiesExport($value)'; } 
 }
