// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
/// this setting can determine the clearance level to be set
/// 
@immutable final class TurnstileClearanceLevel {const TurnstileClearanceLevel._(this.value);

factory TurnstileClearanceLevel.fromJson(String json) { return switch (json) {
  'no_clearance' => noClearance,
  'jschallenge' => jschallenge,
  'managed' => managed,
  'interactive' => interactive,
  _ => TurnstileClearanceLevel._(json),
}; }

static const TurnstileClearanceLevel noClearance = TurnstileClearanceLevel._('no_clearance');

static const TurnstileClearanceLevel jschallenge = TurnstileClearanceLevel._('jschallenge');

static const TurnstileClearanceLevel managed = TurnstileClearanceLevel._('managed');

static const TurnstileClearanceLevel interactive = TurnstileClearanceLevel._('interactive');

static const List<TurnstileClearanceLevel> values = [noClearance, jschallenge, managed, interactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TurnstileClearanceLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TurnstileClearanceLevel($value)'; } 
 }
