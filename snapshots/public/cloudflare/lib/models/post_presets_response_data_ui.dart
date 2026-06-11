// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_presets_response_data_ui_design_tokens.dart';@immutable final class PostPresetsResponseDataUi {const PostPresetsResponseDataUi({required this.designTokens, this.configDiff, });

factory PostPresetsResponseDataUi.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataUi(
  configDiff: json['config_diff'] as Map<String, dynamic>?,
  designTokens: PostPresetsResponseDataUiDesignTokens.fromJson(json['design_tokens'] as Map<String, dynamic>),
); }

final Map<String,dynamic>? configDiff;

final PostPresetsResponseDataUiDesignTokens designTokens;

Map<String, dynamic> toJson() { return {
  'config_diff': ?configDiff,
  'design_tokens': designTokens.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('design_tokens'); } 
PostPresetsResponseDataUi copyWith({Map<String, dynamic> Function()? configDiff, PostPresetsResponseDataUiDesignTokens? designTokens, }) { return PostPresetsResponseDataUi(
  configDiff: configDiff != null ? configDiff() : this.configDiff,
  designTokens: designTokens ?? this.designTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataUi &&
          configDiff == other.configDiff &&
          designTokens == other.designTokens; } 
@override int get hashCode { return Object.hash(configDiff, designTokens); } 
@override String toString() { return 'PostPresetsResponseDataUi(configDiff: $configDiff, designTokens: $designTokens)'; } 
 }
