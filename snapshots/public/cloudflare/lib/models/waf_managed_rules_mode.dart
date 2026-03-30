// GENERATED CODE - DO NOT MODIFY BY HAND

/// Defines the state of the rules contained in the rule group. When `on`, the rules in the group are configurable/usable.
final class WafManagedRulesMode {const WafManagedRulesMode._(this.value);

factory WafManagedRulesMode.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => WafManagedRulesMode._(json),
}; }

static const WafManagedRulesMode $on = WafManagedRulesMode._('on');

static const WafManagedRulesMode off = WafManagedRulesMode._('off');

static const List<WafManagedRulesMode> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WafManagedRulesMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WafManagedRulesMode($value)'; } 
 }
