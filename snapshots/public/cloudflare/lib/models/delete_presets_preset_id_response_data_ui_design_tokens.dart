// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_ui_design_tokens_colors.dart';@immutable final class DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius {const DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius._(this.value);

factory DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius.fromJson(String json) { return switch (json) {
  'rounded' => rounded,
  _ => DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius._(json),
}; }

static const DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius rounded = DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius._('rounded');

static const List<DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius> values = [rounded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius($value)'; } 
 }
@immutable final class DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth {const DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth._(this.value);

factory DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth.fromJson(String json) { return switch (json) {
  'thin' => thin,
  _ => DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth._(json),
}; }

static const DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth thin = DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth._('thin');

static const List<DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth> values = [thin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth($value)'; } 
 }
@immutable final class DeletePresetsPresetIdResponseDataUiDesignTokensTheme {const DeletePresetsPresetIdResponseDataUiDesignTokensTheme._(this.value);

factory DeletePresetsPresetIdResponseDataUiDesignTokensTheme.fromJson(String json) { return switch (json) {
  'dark' => dark,
  _ => DeletePresetsPresetIdResponseDataUiDesignTokensTheme._(json),
}; }

static const DeletePresetsPresetIdResponseDataUiDesignTokensTheme dark = DeletePresetsPresetIdResponseDataUiDesignTokensTheme._('dark');

static const List<DeletePresetsPresetIdResponseDataUiDesignTokensTheme> values = [dark];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataUiDesignTokensTheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataUiDesignTokensTheme($value)'; } 
 }
@immutable final class DeletePresetsPresetIdResponseDataUiDesignTokens {const DeletePresetsPresetIdResponseDataUiDesignTokens({required this.borderRadius, required this.borderWidth, required this.colors, required this.logo, required this.theme, this.spacingBase = 4.0, });

factory DeletePresetsPresetIdResponseDataUiDesignTokens.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataUiDesignTokens(
  borderRadius: DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius.fromJson(json['border_radius'] as String),
  borderWidth: DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth.fromJson(json['border_width'] as String),
  colors: DeletePresetsPresetIdResponseDataUiDesignTokensColors.fromJson(json['colors'] as Map<String, dynamic>),
  logo: json['logo'] as String,
  spacingBase: (json['spacing_base'] as num).toDouble(),
  theme: DeletePresetsPresetIdResponseDataUiDesignTokensTheme.fromJson(json['theme'] as String),
); }

final DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius borderRadius;

final DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth borderWidth;

final DeletePresetsPresetIdResponseDataUiDesignTokensColors colors;

final String logo;

final double spacingBase;

final DeletePresetsPresetIdResponseDataUiDesignTokensTheme theme;

Map<String, dynamic> toJson() { return {
  'border_radius': borderRadius.toJson(),
  'border_width': borderWidth.toJson(),
  'colors': colors.toJson(),
  'logo': logo,
  'spacing_base': spacingBase,
  'theme': theme.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('border_radius') &&
      json.containsKey('border_width') &&
      json.containsKey('colors') &&
      json.containsKey('logo') && json['logo'] is String &&
      json.containsKey('spacing_base') && json['spacing_base'] is num &&
      json.containsKey('theme'); } 
DeletePresetsPresetIdResponseDataUiDesignTokens copyWith({DeletePresetsPresetIdResponseDataUiDesignTokensBorderRadius? borderRadius, DeletePresetsPresetIdResponseDataUiDesignTokensBorderWidth? borderWidth, DeletePresetsPresetIdResponseDataUiDesignTokensColors? colors, String? logo, double? spacingBase, DeletePresetsPresetIdResponseDataUiDesignTokensTheme? theme, }) { return DeletePresetsPresetIdResponseDataUiDesignTokens(
  borderRadius: borderRadius ?? this.borderRadius,
  borderWidth: borderWidth ?? this.borderWidth,
  colors: colors ?? this.colors,
  logo: logo ?? this.logo,
  spacingBase: spacingBase ?? this.spacingBase,
  theme: theme ?? this.theme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataUiDesignTokens &&
          borderRadius == other.borderRadius &&
          borderWidth == other.borderWidth &&
          colors == other.colors &&
          logo == other.logo &&
          spacingBase == other.spacingBase &&
          theme == other.theme; } 
@override int get hashCode { return Object.hash(borderRadius, borderWidth, colors, logo, spacingBase, theme); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataUiDesignTokens(borderRadius: $borderRadius, borderWidth: $borderWidth, colors: $colors, logo: $logo, spacingBase: $spacingBase, theme: $theme)'; } 
 }
