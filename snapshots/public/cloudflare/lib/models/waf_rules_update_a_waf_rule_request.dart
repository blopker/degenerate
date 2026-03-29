// GENERATED CODE - DO NOT MODIFY BY HAND

/// Defines the mode/action of the rule when triggered. You must use a value from the `allowed_modes` array of the current rule.
final class WafRulesUpdateAWafRuleRequestMode {const WafRulesUpdateAWafRuleRequestMode._(this.value);

factory WafRulesUpdateAWafRuleRequestMode.fromJson(String json) { return switch (json) {
  'default' => $default,
  'disable' => disable,
  'simulate' => simulate,
  'block' => block,
  'challenge' => challenge,
  'on' => $on,
  'off' => off,
  _ => WafRulesUpdateAWafRuleRequestMode._(json),
}; }

static const WafRulesUpdateAWafRuleRequestMode $default = WafRulesUpdateAWafRuleRequestMode._('default');

static const WafRulesUpdateAWafRuleRequestMode disable = WafRulesUpdateAWafRuleRequestMode._('disable');

static const WafRulesUpdateAWafRuleRequestMode simulate = WafRulesUpdateAWafRuleRequestMode._('simulate');

static const WafRulesUpdateAWafRuleRequestMode block = WafRulesUpdateAWafRuleRequestMode._('block');

static const WafRulesUpdateAWafRuleRequestMode challenge = WafRulesUpdateAWafRuleRequestMode._('challenge');

static const WafRulesUpdateAWafRuleRequestMode $on = WafRulesUpdateAWafRuleRequestMode._('on');

static const WafRulesUpdateAWafRuleRequestMode off = WafRulesUpdateAWafRuleRequestMode._('off');

static const List<WafRulesUpdateAWafRuleRequestMode> values = [$default, disable, simulate, block, challenge, $on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WafRulesUpdateAWafRuleRequestMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WafRulesUpdateAWafRuleRequestMode($value)'; } 
 }
final class WafRulesUpdateAWafRuleRequest {const WafRulesUpdateAWafRuleRequest({this.mode});

factory WafRulesUpdateAWafRuleRequest.fromJson(Map<String, dynamic> json) { return WafRulesUpdateAWafRuleRequest(
  mode: json['mode'] != null ? WafRulesUpdateAWafRuleRequestMode.fromJson(json['mode'] as String) : null,
); }

/// Defines the mode/action of the rule when triggered. You must use a value from the `allowed_modes` array of the current rule.
final WafRulesUpdateAWafRuleRequestMode? mode;

Map<String, dynamic> toJson() { return {
  if (mode != null) 'mode': mode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mode'}.contains(key)); } 
WafRulesUpdateAWafRuleRequest copyWith({WafRulesUpdateAWafRuleRequestMode Function()? mode}) { return WafRulesUpdateAWafRuleRequest(
  mode: mode != null ? mode() : this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafRulesUpdateAWafRuleRequest &&
          mode == other.mode; } 
@override int get hashCode { return mode.hashCode; } 
@override String toString() { return 'WafRulesUpdateAWafRuleRequest(mode: $mode)'; } 
 }
