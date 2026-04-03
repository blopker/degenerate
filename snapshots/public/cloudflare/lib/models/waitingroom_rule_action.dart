// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The action to take when the expression matches.
@immutable final class WaitingroomRuleAction {const WaitingroomRuleAction._(this.value);

factory WaitingroomRuleAction.fromJson(String json) { return switch (json) {
  'bypass_waiting_room' => bypassWaitingRoom,
  _ => WaitingroomRuleAction._(json),
}; }

static const WaitingroomRuleAction bypassWaitingRoom = WaitingroomRuleAction._('bypass_waiting_room');

static const List<WaitingroomRuleAction> values = [bypassWaitingRoom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WaitingroomRuleAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WaitingroomRuleAction($value)'; } 
 }
