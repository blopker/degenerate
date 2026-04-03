// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NscStatusInfoVariant2State {const NscStatusInfoVariant2State._(this.value);

factory NscStatusInfoVariant2State.fromJson(String json) { return switch (json) {
  'Down' => down,
  _ => NscStatusInfoVariant2State._(json),
}; }

static const NscStatusInfoVariant2State down = NscStatusInfoVariant2State._('Down');

static const List<NscStatusInfoVariant2State> values = [down];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NscStatusInfoVariant2State && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NscStatusInfoVariant2State($value)'; } 
 }
@immutable final class NscStatusInfoVariant2 {const NscStatusInfoVariant2({required this.state, this.reason, });

factory NscStatusInfoVariant2.fromJson(Map<String, dynamic> json) { return NscStatusInfoVariant2(
  reason: json['reason'] as String?,
  state: NscStatusInfoVariant2State.fromJson(json['state'] as String),
); }

/// Diagnostic information, if available
final String? reason;

final NscStatusInfoVariant2State state;

Map<String, dynamic> toJson() { return {
  'reason': ?reason,
  'state': state.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('state'); } 
NscStatusInfoVariant2 copyWith({String? Function()? reason, NscStatusInfoVariant2State? state, }) { return NscStatusInfoVariant2(
  reason: reason != null ? reason() : this.reason,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscStatusInfoVariant2 &&
          reason == other.reason &&
          state == other.state; } 
@override int get hashCode { return Object.hash(reason, state); } 
@override String toString() { return 'NscStatusInfoVariant2(reason: $reason, state: $state)'; } 
 }
