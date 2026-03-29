// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_update_preset_ui_design_tokens.dart';final class RealtimekitUpdatePresetUi {const RealtimekitUpdatePresetUi({this.configDiff, this.designTokens, });

factory RealtimekitUpdatePresetUi.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetUi(
  configDiff: (json['config_diff'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  designTokens: json['design_tokens'] != null ? RealtimekitUpdatePresetUiDesignTokens.fromJson(json['design_tokens'] as Map<String, dynamic>) : null,
); }

final Map<String,dynamic>? configDiff;

final RealtimekitUpdatePresetUiDesignTokens? designTokens;

Map<String, dynamic> toJson() { return {
  'config_diff': ?configDiff,
  if (designTokens != null) 'design_tokens': designTokens?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitUpdatePresetUi copyWith({Map<String, dynamic> Function()? configDiff, RealtimekitUpdatePresetUiDesignTokens Function()? designTokens, }) { return RealtimekitUpdatePresetUi(
  configDiff: configDiff != null ? configDiff() : this.configDiff,
  designTokens: designTokens != null ? designTokens() : this.designTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetUi &&
          configDiff == other.configDiff &&
          designTokens == other.designTokens; } 
@override int get hashCode { return Object.hash(configDiff, designTokens); } 
@override String toString() { return 'RealtimekitUpdatePresetUi(configDiff: $configDiff, designTokens: $designTokens)'; } 
 }
