// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
@immutable final class WafPackagesListWafPackagesMatch {const WafPackagesListWafPackagesMatch._(this.value);

factory WafPackagesListWafPackagesMatch.fromJson(String json) { return switch (json) {
  'any' => any,
  'all' => all,
  _ => WafPackagesListWafPackagesMatch._(json),
}; }

static const WafPackagesListWafPackagesMatch any = WafPackagesListWafPackagesMatch._('any');

static const WafPackagesListWafPackagesMatch all = WafPackagesListWafPackagesMatch._('all');

static const List<WafPackagesListWafPackagesMatch> values = [any, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WafPackagesListWafPackagesMatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WafPackagesListWafPackagesMatch($value)'; } 
 }
