// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data_ui_design_tokens_colors.dart';@immutable final class GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius {const GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius._(this.value);

factory GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius.fromJson(String json) { return switch (json) {
  'rounded' => rounded,
  _ => GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius._(json),
}; }

static const GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius rounded = GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius._('rounded');

static const List<GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius> values = [rounded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius($value)'; } 
 }
@immutable final class GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth {const GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth._(this.value);

factory GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth.fromJson(String json) { return switch (json) {
  'thin' => thin,
  _ => GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth._(json),
}; }

static const GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth thin = GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth._('thin');

static const List<GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth> values = [thin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth($value)'; } 
 }
@immutable final class GetPresetsPresetIdResponseDataUiDesignTokensTheme {const GetPresetsPresetIdResponseDataUiDesignTokensTheme._(this.value);

factory GetPresetsPresetIdResponseDataUiDesignTokensTheme.fromJson(String json) { return switch (json) {
  'dark' => dark,
  _ => GetPresetsPresetIdResponseDataUiDesignTokensTheme._(json),
}; }

static const GetPresetsPresetIdResponseDataUiDesignTokensTheme dark = GetPresetsPresetIdResponseDataUiDesignTokensTheme._('dark');

static const List<GetPresetsPresetIdResponseDataUiDesignTokensTheme> values = [dark];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataUiDesignTokensTheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataUiDesignTokensTheme($value)'; } 
 }
@immutable final class GetPresetsPresetIdResponseDataUiDesignTokens {const GetPresetsPresetIdResponseDataUiDesignTokens({required this.borderRadius, required this.borderWidth, required this.colors, required this.logo, required this.theme, this.spacingBase = 4.0, });

factory GetPresetsPresetIdResponseDataUiDesignTokens.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataUiDesignTokens(
  borderRadius: GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius.fromJson(json['border_radius'] as String),
  borderWidth: GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth.fromJson(json['border_width'] as String),
  colors: GetPresetsPresetIdResponseDataUiDesignTokensColors.fromJson(json['colors'] as Map<String, dynamic>),
  logo: json['logo'] as String,
  spacingBase: (json['spacing_base'] as num).toDouble(),
  theme: GetPresetsPresetIdResponseDataUiDesignTokensTheme.fromJson(json['theme'] as String),
); }

final GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius borderRadius;

final GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth borderWidth;

final GetPresetsPresetIdResponseDataUiDesignTokensColors colors;

final String logo;

final double spacingBase;

final GetPresetsPresetIdResponseDataUiDesignTokensTheme theme;

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
GetPresetsPresetIdResponseDataUiDesignTokens copyWith({GetPresetsPresetIdResponseDataUiDesignTokensBorderRadius? borderRadius, GetPresetsPresetIdResponseDataUiDesignTokensBorderWidth? borderWidth, GetPresetsPresetIdResponseDataUiDesignTokensColors? colors, String? logo, double? spacingBase, GetPresetsPresetIdResponseDataUiDesignTokensTheme? theme, }) { return GetPresetsPresetIdResponseDataUiDesignTokens(
  borderRadius: borderRadius ?? this.borderRadius,
  borderWidth: borderWidth ?? this.borderWidth,
  colors: colors ?? this.colors,
  logo: logo ?? this.logo,
  spacingBase: spacingBase ?? this.spacingBase,
  theme: theme ?? this.theme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataUiDesignTokens &&
          borderRadius == other.borderRadius &&
          borderWidth == other.borderWidth &&
          colors == other.colors &&
          logo == other.logo &&
          spacingBase == other.spacingBase &&
          theme == other.theme; } 
@override int get hashCode { return Object.hash(borderRadius, borderWidth, colors, logo, spacingBase, theme); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataUiDesignTokens(borderRadius: $borderRadius, borderWidth: $borderWidth, colors: $colors, logo: $logo, spacingBase: $spacingBase, theme: $theme)'; } 
 }
