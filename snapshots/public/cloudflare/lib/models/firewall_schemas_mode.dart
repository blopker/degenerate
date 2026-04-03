// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The action to apply to a matched request.
@immutable final class FirewallSchemasMode {const FirewallSchemasMode._(this.value);

factory FirewallSchemasMode.fromJson(String json) { return switch (json) {
  'block' => block,
  'challenge' => challenge,
  'whitelist' => whitelist,
  'js_challenge' => jsChallenge,
  'managed_challenge' => managedChallenge,
  _ => FirewallSchemasMode._(json),
}; }

static const FirewallSchemasMode block = FirewallSchemasMode._('block');

static const FirewallSchemasMode challenge = FirewallSchemasMode._('challenge');

static const FirewallSchemasMode whitelist = FirewallSchemasMode._('whitelist');

static const FirewallSchemasMode jsChallenge = FirewallSchemasMode._('js_challenge');

static const FirewallSchemasMode managedChallenge = FirewallSchemasMode._('managed_challenge');

static const List<FirewallSchemasMode> values = [block, challenge, whitelist, jsChallenge, managedChallenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallSchemasMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallSchemasMode($value)'; } 
 }
