// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_match_variant1.dart';/// A value that is one of: `FirewallMatchVariant1`.
sealed class FirewallMatch {const FirewallMatch();

factory FirewallMatch.fromJson(Map<String, dynamic> json) {   if (FirewallMatchVariant1.canParse(json)) {
    return FirewallMatchFirewallMatchVariant1(FirewallMatchVariant1.fromJson(json));
  }
  return FirewallMatch$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class FirewallMatchFirewallMatchVariant1 extends FirewallMatch {const FirewallMatchFirewallMatchVariant1(this._value);

final FirewallMatchVariant1 _value;

@override FirewallMatchVariant1 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallMatchFirewallMatchVariant1 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'FirewallMatch.firewallMatchVariant1($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class FirewallMatch$Unknown extends FirewallMatch {const FirewallMatch$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallMatch$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'FirewallMatch.unknown($_value)'; } 
 }
