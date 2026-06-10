// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the URL scheme used to connect to your origin database.
@immutable final class HyperdriveHyperdriveScheme {const HyperdriveHyperdriveScheme._(this.value);

factory HyperdriveHyperdriveScheme.fromJson(String json) { return switch (json) {
  'postgres' => postgres,
  'postgresql' => postgresql,
  'mysql' => mysql,
  _ => HyperdriveHyperdriveScheme._(json),
}; }

static const HyperdriveHyperdriveScheme postgres = HyperdriveHyperdriveScheme._('postgres');

static const HyperdriveHyperdriveScheme postgresql = HyperdriveHyperdriveScheme._('postgresql');

static const HyperdriveHyperdriveScheme mysql = HyperdriveHyperdriveScheme._('mysql');

static const List<HyperdriveHyperdriveScheme> values = [postgres, postgresql, mysql];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is HyperdriveHyperdriveScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'HyperdriveHyperdriveScheme($value)'; } 
 }
