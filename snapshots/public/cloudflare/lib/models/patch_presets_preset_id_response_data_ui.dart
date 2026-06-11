// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_presets_preset_id_response_data_ui_design_tokens.dart';@immutable final class PatchPresetsPresetIdResponseDataUi {const PatchPresetsPresetIdResponseDataUi({required this.designTokens, this.configDiff, });

factory PatchPresetsPresetIdResponseDataUi.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataUi(
  configDiff: json['config_diff'] as Map<String, dynamic>?,
  designTokens: PatchPresetsPresetIdResponseDataUiDesignTokens.fromJson(json['design_tokens'] as Map<String, dynamic>),
); }

final Map<String,dynamic>? configDiff;

final PatchPresetsPresetIdResponseDataUiDesignTokens designTokens;

Map<String, dynamic> toJson() { return {
  'config_diff': ?configDiff,
  'design_tokens': designTokens.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('design_tokens'); } 
PatchPresetsPresetIdResponseDataUi copyWith({Map<String, dynamic> Function()? configDiff, PatchPresetsPresetIdResponseDataUiDesignTokens? designTokens, }) { return PatchPresetsPresetIdResponseDataUi(
  configDiff: configDiff != null ? configDiff() : this.configDiff,
  designTokens: designTokens ?? this.designTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataUi &&
          configDiff == other.configDiff &&
          designTokens == other.designTokens; } 
@override int get hashCode { return Object.hash(configDiff, designTokens); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataUi(configDiff: $configDiff, designTokens: $designTokens)'; } 
 }
