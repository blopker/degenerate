// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines the field used to sort returned rules.
@immutable final class IpAccessRulesForAnAccountListIpAccessRulesOrder {const IpAccessRulesForAnAccountListIpAccessRulesOrder._(this.value);

factory IpAccessRulesForAnAccountListIpAccessRulesOrder.fromJson(String json) { return switch (json) {
  'configuration.target' => configurationTarget,
  'configuration.value' => configurationValue,
  'mode' => mode,
  _ => IpAccessRulesForAnAccountListIpAccessRulesOrder._(json),
}; }

static const IpAccessRulesForAnAccountListIpAccessRulesOrder configurationTarget = IpAccessRulesForAnAccountListIpAccessRulesOrder._('configuration.target');

static const IpAccessRulesForAnAccountListIpAccessRulesOrder configurationValue = IpAccessRulesForAnAccountListIpAccessRulesOrder._('configuration.value');

static const IpAccessRulesForAnAccountListIpAccessRulesOrder mode = IpAccessRulesForAnAccountListIpAccessRulesOrder._('mode');

static const List<IpAccessRulesForAnAccountListIpAccessRulesOrder> values = [configurationTarget, configurationValue, mode];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IpAccessRulesForAnAccountListIpAccessRulesOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IpAccessRulesForAnAccountListIpAccessRulesOrder($value)'; } 
 }
