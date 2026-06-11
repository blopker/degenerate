// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_presets_preset_id_response_data_ui_design_tokens_colors.dart';@immutable final class PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius {const PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius._(this.value);

factory PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius.fromJson(String json) { return switch (json) {
  'rounded' => rounded,
  _ => PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius._(json),
}; }

static const PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius rounded = PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius._('rounded');

static const List<PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius> values = [rounded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius($value)'; } 
 }
@immutable final class PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth {const PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth._(this.value);

factory PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth.fromJson(String json) { return switch (json) {
  'thin' => thin,
  _ => PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth._(json),
}; }

static const PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth thin = PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth._('thin');

static const List<PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth> values = [thin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth($value)'; } 
 }
@immutable final class PatchPresetsPresetIdResponseDataUiDesignTokensTheme {const PatchPresetsPresetIdResponseDataUiDesignTokensTheme._(this.value);

factory PatchPresetsPresetIdResponseDataUiDesignTokensTheme.fromJson(String json) { return switch (json) {
  'dark' => dark,
  _ => PatchPresetsPresetIdResponseDataUiDesignTokensTheme._(json),
}; }

static const PatchPresetsPresetIdResponseDataUiDesignTokensTheme dark = PatchPresetsPresetIdResponseDataUiDesignTokensTheme._('dark');

static const List<PatchPresetsPresetIdResponseDataUiDesignTokensTheme> values = [dark];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataUiDesignTokensTheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataUiDesignTokensTheme($value)'; } 
 }
@immutable final class PatchPresetsPresetIdResponseDataUiDesignTokens {const PatchPresetsPresetIdResponseDataUiDesignTokens({required this.borderRadius, required this.borderWidth, required this.colors, required this.logo, required this.theme, this.spacingBase = 4.0, });

factory PatchPresetsPresetIdResponseDataUiDesignTokens.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataUiDesignTokens(
  borderRadius: PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius.fromJson(json['border_radius'] as String),
  borderWidth: PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth.fromJson(json['border_width'] as String),
  colors: PatchPresetsPresetIdResponseDataUiDesignTokensColors.fromJson(json['colors'] as Map<String, dynamic>),
  logo: json['logo'] as String,
  spacingBase: (json['spacing_base'] as num).toDouble(),
  theme: PatchPresetsPresetIdResponseDataUiDesignTokensTheme.fromJson(json['theme'] as String),
); }

final PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius borderRadius;

final PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth borderWidth;

final PatchPresetsPresetIdResponseDataUiDesignTokensColors colors;

final String logo;

final double spacingBase;

final PatchPresetsPresetIdResponseDataUiDesignTokensTheme theme;

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
PatchPresetsPresetIdResponseDataUiDesignTokens copyWith({PatchPresetsPresetIdResponseDataUiDesignTokensBorderRadius? borderRadius, PatchPresetsPresetIdResponseDataUiDesignTokensBorderWidth? borderWidth, PatchPresetsPresetIdResponseDataUiDesignTokensColors? colors, String? logo, double? spacingBase, PatchPresetsPresetIdResponseDataUiDesignTokensTheme? theme, }) { return PatchPresetsPresetIdResponseDataUiDesignTokens(
  borderRadius: borderRadius ?? this.borderRadius,
  borderWidth: borderWidth ?? this.borderWidth,
  colors: colors ?? this.colors,
  logo: logo ?? this.logo,
  spacingBase: spacingBase ?? this.spacingBase,
  theme: theme ?? this.theme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataUiDesignTokens &&
          borderRadius == other.borderRadius &&
          borderWidth == other.borderWidth &&
          colors == other.colors &&
          logo == other.logo &&
          spacingBase == other.spacingBase &&
          theme == other.theme; } 
@override int get hashCode { return Object.hash(borderRadius, borderWidth, colors, logo, spacingBase, theme); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataUiDesignTokens(borderRadius: $borderRadius, borderWidth: $borderWidth, colors: $colors, logo: $logo, spacingBase: $spacingBase, theme: $theme)'; } 
 }
