// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Allow or deny operations against the resources.
@immutable final class IamAccess {const IamAccess._(this.value);

factory IamAccess.fromJson(String json) { return switch (json) {
  'allow' => allow,
  'deny' => deny,
  _ => IamAccess._(json),
}; }

static const IamAccess allow = IamAccess._('allow');

static const IamAccess deny = IamAccess._('deny');

static const List<IamAccess> values = [allow, deny];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IamAccess && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IamAccess($value)'; } 
 }
