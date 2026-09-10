// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Allow or deny operations against the resources.
@immutable final class IamEffect {const IamEffect._(this.value);

factory IamEffect.fromJson(String json) {return switch (json) {
  'allow' => allow,
  'deny' => deny,
  _ => IamEffect._(json),
};}

static const IamEffect allow = IamEffect._('allow');

static const IamEffect deny = IamEffect._('deny');

static const List<IamEffect> values = [allow, deny];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is IamEffect && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'IamEffect($value)';}
}
