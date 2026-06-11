// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_ui_design_tokens_colors_background.dart';import 'delete_presets_preset_id_response_data_ui_design_tokens_colors_brand.dart';@immutable final class DeletePresetsPresetIdResponseDataUiDesignTokensColors {const DeletePresetsPresetIdResponseDataUiDesignTokensColors({required this.background, required this.brand, this.danger = '#FF2D2D', this.success = '#62A504', this.text = '#EEEEEE', this.textOnBrand = '#EEEEEE', this.videoBg = '#191919', this.warning = '#FFCD07', });

factory DeletePresetsPresetIdResponseDataUiDesignTokensColors.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataUiDesignTokensColors(
  background: DeletePresetsPresetIdResponseDataUiDesignTokensColorsBackground.fromJson(json['background'] as Map<String, dynamic>),
  brand: DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand.fromJson(json['brand'] as Map<String, dynamic>),
  danger: json['danger'] as String,
  success: json['success'] as String,
  text: json['text'] as String,
  textOnBrand: json['text_on_brand'] as String,
  videoBg: json['video_bg'] as String,
  warning: json['warning'] as String,
); }

final DeletePresetsPresetIdResponseDataUiDesignTokensColorsBackground background;

final DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand brand;

final String danger;

final String success;

final String text;

final String textOnBrand;

final String videoBg;

final String warning;

Map<String, dynamic> toJson() { return {
  'background': background.toJson(),
  'brand': brand.toJson(),
  'danger': danger,
  'success': success,
  'text': text,
  'text_on_brand': textOnBrand,
  'video_bg': videoBg,
  'warning': warning,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('background') &&
      json.containsKey('brand') &&
      json.containsKey('danger') && json['danger'] is String &&
      json.containsKey('success') && json['success'] is String &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('text_on_brand') && json['text_on_brand'] is String &&
      json.containsKey('video_bg') && json['video_bg'] is String &&
      json.containsKey('warning') && json['warning'] is String; } 
DeletePresetsPresetIdResponseDataUiDesignTokensColors copyWith({DeletePresetsPresetIdResponseDataUiDesignTokensColorsBackground? background, DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand? brand, String? danger, String? success, String? text, String? textOnBrand, String? videoBg, String? warning, }) { return DeletePresetsPresetIdResponseDataUiDesignTokensColors(
  background: background ?? this.background,
  brand: brand ?? this.brand,
  danger: danger ?? this.danger,
  success: success ?? this.success,
  text: text ?? this.text,
  textOnBrand: textOnBrand ?? this.textOnBrand,
  videoBg: videoBg ?? this.videoBg,
  warning: warning ?? this.warning,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataUiDesignTokensColors &&
          background == other.background &&
          brand == other.brand &&
          danger == other.danger &&
          success == other.success &&
          text == other.text &&
          textOnBrand == other.textOnBrand &&
          videoBg == other.videoBg &&
          warning == other.warning; } 
@override int get hashCode { return Object.hash(background, brand, danger, success, text, textOnBrand, videoBg, warning); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataUiDesignTokensColors(background: $background, brand: $brand, danger: $danger, success: $success, text: $text, textOnBrand: $textOnBrand, videoBg: $videoBg, warning: $warning)'; } 
 }
