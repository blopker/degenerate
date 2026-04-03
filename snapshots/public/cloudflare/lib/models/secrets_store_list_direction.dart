// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecretsStoreListDirection {const SecretsStoreListDirection._(this.value);

factory SecretsStoreListDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => SecretsStoreListDirection._(json),
}; }

static const SecretsStoreListDirection asc = SecretsStoreListDirection._('asc');

static const SecretsStoreListDirection desc = SecretsStoreListDirection._('desc');

static const List<SecretsStoreListDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretsStoreListDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretsStoreListDirection($value)'; } 
 }
