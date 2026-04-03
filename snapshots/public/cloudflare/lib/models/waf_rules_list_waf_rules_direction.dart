// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines the direction used to sort returned rules.
@immutable final class WafRulesListWafRulesDirection {const WafRulesListWafRulesDirection._(this.value);

factory WafRulesListWafRulesDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => WafRulesListWafRulesDirection._(json),
}; }

static const WafRulesListWafRulesDirection asc = WafRulesListWafRulesDirection._('asc');

static const WafRulesListWafRulesDirection desc = WafRulesListWafRulesDirection._('desc');

static const List<WafRulesListWafRulesDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WafRulesListWafRulesDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WafRulesListWafRulesDirection($value)'; } 
 }
