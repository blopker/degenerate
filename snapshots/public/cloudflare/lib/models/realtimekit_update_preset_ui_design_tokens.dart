// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_update_preset_ui_design_tokens_colors.dart';final class RealtimekitUpdatePresetUiDesignTokensBorderRadius {const RealtimekitUpdatePresetUiDesignTokensBorderRadius._(this.value);

factory RealtimekitUpdatePresetUiDesignTokensBorderRadius.fromJson(String json) { return switch (json) {
  'rounded' => rounded,
  _ => RealtimekitUpdatePresetUiDesignTokensBorderRadius._(json),
}; }

static const RealtimekitUpdatePresetUiDesignTokensBorderRadius rounded = RealtimekitUpdatePresetUiDesignTokensBorderRadius._('rounded');

static const List<RealtimekitUpdatePresetUiDesignTokensBorderRadius> values = [rounded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetUiDesignTokensBorderRadius && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetUiDesignTokensBorderRadius($value)'; } 
 }
final class RealtimekitUpdatePresetUiDesignTokensBorderWidth {const RealtimekitUpdatePresetUiDesignTokensBorderWidth._(this.value);

factory RealtimekitUpdatePresetUiDesignTokensBorderWidth.fromJson(String json) { return switch (json) {
  'thin' => thin,
  _ => RealtimekitUpdatePresetUiDesignTokensBorderWidth._(json),
}; }

static const RealtimekitUpdatePresetUiDesignTokensBorderWidth thin = RealtimekitUpdatePresetUiDesignTokensBorderWidth._('thin');

static const List<RealtimekitUpdatePresetUiDesignTokensBorderWidth> values = [thin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetUiDesignTokensBorderWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetUiDesignTokensBorderWidth($value)'; } 
 }
final class RealtimekitUpdatePresetUiDesignTokensTheme {const RealtimekitUpdatePresetUiDesignTokensTheme._(this.value);

factory RealtimekitUpdatePresetUiDesignTokensTheme.fromJson(String json) { return switch (json) {
  'dark' => dark,
  _ => RealtimekitUpdatePresetUiDesignTokensTheme._(json),
}; }

static const RealtimekitUpdatePresetUiDesignTokensTheme dark = RealtimekitUpdatePresetUiDesignTokensTheme._('dark');

static const List<RealtimekitUpdatePresetUiDesignTokensTheme> values = [dark];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetUiDesignTokensTheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetUiDesignTokensTheme($value)'; } 
 }
final class RealtimekitUpdatePresetUiDesignTokens {const RealtimekitUpdatePresetUiDesignTokens({this.borderRadius, this.borderWidth, this.colors, this.logo, this.spacingBase = 4.0, this.theme, });

factory RealtimekitUpdatePresetUiDesignTokens.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetUiDesignTokens(
  borderRadius: json['border_radius'] != null ? RealtimekitUpdatePresetUiDesignTokensBorderRadius.fromJson(json['border_radius'] as String) : null,
  borderWidth: json['border_width'] != null ? RealtimekitUpdatePresetUiDesignTokensBorderWidth.fromJson(json['border_width'] as String) : null,
  colors: json['colors'] != null ? RealtimekitUpdatePresetUiDesignTokensColors.fromJson(json['colors'] as Map<String, dynamic>) : null,
  logo: json['logo'] as String?,
  spacingBase: json.containsKey('spacing_base') ? (json['spacing_base'] as num).toDouble() : 4.0,
  theme: json['theme'] != null ? RealtimekitUpdatePresetUiDesignTokensTheme.fromJson(json['theme'] as String) : null,
); }

final RealtimekitUpdatePresetUiDesignTokensBorderRadius? borderRadius;

final RealtimekitUpdatePresetUiDesignTokensBorderWidth? borderWidth;

final RealtimekitUpdatePresetUiDesignTokensColors? colors;

final String? logo;

final double spacingBase;

final RealtimekitUpdatePresetUiDesignTokensTheme? theme;

Map<String, dynamic> toJson() { return {
  if (borderRadius != null) 'border_radius': borderRadius?.toJson(),
  if (borderWidth != null) 'border_width': borderWidth?.toJson(),
  if (colors != null) 'colors': colors?.toJson(),
  'logo': ?logo,
  'spacing_base': spacingBase,
  if (theme != null) 'theme': theme?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'border_radius', 'border_width', 'colors', 'logo', 'spacing_base', 'theme'}.contains(key)); } 
RealtimekitUpdatePresetUiDesignTokens copyWith({RealtimekitUpdatePresetUiDesignTokensBorderRadius Function()? borderRadius, RealtimekitUpdatePresetUiDesignTokensBorderWidth Function()? borderWidth, RealtimekitUpdatePresetUiDesignTokensColors Function()? colors, String Function()? logo, double Function()? spacingBase, RealtimekitUpdatePresetUiDesignTokensTheme Function()? theme, }) { return RealtimekitUpdatePresetUiDesignTokens(
  borderRadius: borderRadius != null ? borderRadius() : this.borderRadius,
  borderWidth: borderWidth != null ? borderWidth() : this.borderWidth,
  colors: colors != null ? colors() : this.colors,
  logo: logo != null ? logo() : this.logo,
  spacingBase: spacingBase != null ? spacingBase() : this.spacingBase,
  theme: theme != null ? theme() : this.theme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetUiDesignTokens &&
          borderRadius == other.borderRadius &&
          borderWidth == other.borderWidth &&
          colors == other.colors &&
          logo == other.logo &&
          spacingBase == other.spacingBase &&
          theme == other.theme; } 
@override int get hashCode { return Object.hash(borderRadius, borderWidth, colors, logo, spacingBase, theme); } 
@override String toString() { return 'RealtimekitUpdatePresetUiDesignTokens(borderRadius: $borderRadius, borderWidth: $borderWidth, colors: $colors, logo: $logo, spacingBase: $spacingBase, theme: $theme)'; } 
 }
