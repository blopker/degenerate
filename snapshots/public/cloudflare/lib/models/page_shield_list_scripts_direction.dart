// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The direction used to sort returned scripts.
@immutable final class PageShieldListScriptsDirection {const PageShieldListScriptsDirection._(this.value);

factory PageShieldListScriptsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => PageShieldListScriptsDirection._(json),
}; }

static const PageShieldListScriptsDirection asc = PageShieldListScriptsDirection._('asc');

static const PageShieldListScriptsDirection desc = PageShieldListScriptsDirection._('desc');

static const List<PageShieldListScriptsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageShieldListScriptsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageShieldListScriptsDirection($value)'; } 
 }
