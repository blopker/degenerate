// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WaitingroomEnabledOriginCommands2 {const WaitingroomEnabledOriginCommands2._(this.value);

factory WaitingroomEnabledOriginCommands2.fromJson(String json) { return switch (json) {
  'revoke' => revoke,
  _ => WaitingroomEnabledOriginCommands2._(json),
}; }

static const WaitingroomEnabledOriginCommands2 revoke = WaitingroomEnabledOriginCommands2._('revoke');

static const List<WaitingroomEnabledOriginCommands2> values = [revoke];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WaitingroomEnabledOriginCommands2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WaitingroomEnabledOriginCommands2($value)'; } 
 }
