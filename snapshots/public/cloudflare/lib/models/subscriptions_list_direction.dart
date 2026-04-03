// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SubscriptionsListDirection {const SubscriptionsListDirection._(this.value);

factory SubscriptionsListDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => SubscriptionsListDirection._(json),
}; }

static const SubscriptionsListDirection asc = SubscriptionsListDirection._('asc');

static const SubscriptionsListDirection desc = SubscriptionsListDirection._('desc');

static const List<SubscriptionsListDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionsListDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionsListDirection($value)'; } 
 }
