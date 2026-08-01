// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_ui_design_tokens.dart';@immutable final class DeletePresetsPresetIdResponseDataUi {const DeletePresetsPresetIdResponseDataUi({required this.designTokens, this.configDiff, });

factory DeletePresetsPresetIdResponseDataUi.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataUi(
  configDiff: json['config_diff'] as Map<String, dynamic>?,
  designTokens: DeletePresetsPresetIdResponseDataUiDesignTokens.fromJson(json['design_tokens'] as Map<String, dynamic>),
); }

final Map<String,dynamic>? configDiff;

final DeletePresetsPresetIdResponseDataUiDesignTokens designTokens;

Map<String, dynamic> toJson() { return {
  'config_diff': ?configDiff,
  'design_tokens': designTokens.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('design_tokens'); } 
DeletePresetsPresetIdResponseDataUi copyWith({Map<String, dynamic>? Function()? configDiff, DeletePresetsPresetIdResponseDataUiDesignTokens? designTokens, }) { return DeletePresetsPresetIdResponseDataUi(
  configDiff: configDiff != null ? configDiff() : this.configDiff,
  designTokens: designTokens ?? this.designTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataUi &&
          configDiff == other.configDiff &&
          designTokens == other.designTokens; } 
@override int get hashCode { return Object.hash(configDiff, designTokens); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataUi(configDiff: $configDiff, designTokens: $designTokens)'; } 
 }
