// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data_ui_design_tokens.dart';@immutable final class GetPresetsPresetIdResponseDataUi {const GetPresetsPresetIdResponseDataUi({required this.designTokens, this.configDiff, });

factory GetPresetsPresetIdResponseDataUi.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataUi(
  configDiff: json['config_diff'] as Map<String, dynamic>?,
  designTokens: GetPresetsPresetIdResponseDataUiDesignTokens.fromJson(json['design_tokens'] as Map<String, dynamic>),
); }

final Map<String,dynamic>? configDiff;

final GetPresetsPresetIdResponseDataUiDesignTokens designTokens;

Map<String, dynamic> toJson() { return {
  'config_diff': ?configDiff,
  'design_tokens': designTokens.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('design_tokens'); } 
GetPresetsPresetIdResponseDataUi copyWith({Map<String, dynamic>? Function()? configDiff, GetPresetsPresetIdResponseDataUiDesignTokens? designTokens, }) { return GetPresetsPresetIdResponseDataUi(
  configDiff: configDiff != null ? configDiff() : this.configDiff,
  designTokens: designTokens ?? this.designTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataUi &&
          configDiff == other.configDiff &&
          designTokens == other.designTokens; } 
@override int get hashCode { return Object.hash(configDiff, designTokens); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataUi(configDiff: $configDiff, designTokens: $designTokens)'; } 
 }
