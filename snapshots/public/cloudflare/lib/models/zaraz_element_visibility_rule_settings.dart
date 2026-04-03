// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazElementVisibilityRuleSettings {const ZarazElementVisibilityRuleSettings({required this.selector});

factory ZarazElementVisibilityRuleSettings.fromJson(Map<String, dynamic> json) { return ZarazElementVisibilityRuleSettings(
  selector: json['selector'] as String,
); }

final String selector;

Map<String, dynamic> toJson() { return {
  'selector': selector,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('selector') && json['selector'] is String; } 
ZarazElementVisibilityRuleSettings copyWith({String? selector}) { return ZarazElementVisibilityRuleSettings(
  selector: selector ?? this.selector,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazElementVisibilityRuleSettings &&
          selector == other.selector; } 
@override int get hashCode { return selector.hashCode; } 
@override String toString() { return 'ZarazElementVisibilityRuleSettings(selector: $selector)'; } 
 }
