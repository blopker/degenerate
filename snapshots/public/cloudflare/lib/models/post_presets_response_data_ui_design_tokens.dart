// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_presets_response_data_ui_design_tokens_colors.dart';@immutable final class PostPresetsResponseDataUiDesignTokensBorderRadius {const PostPresetsResponseDataUiDesignTokensBorderRadius._(this.value);

factory PostPresetsResponseDataUiDesignTokensBorderRadius.fromJson(String json) { return switch (json) {
  'rounded' => rounded,
  _ => PostPresetsResponseDataUiDesignTokensBorderRadius._(json),
}; }

static const PostPresetsResponseDataUiDesignTokensBorderRadius rounded = PostPresetsResponseDataUiDesignTokensBorderRadius._('rounded');

static const List<PostPresetsResponseDataUiDesignTokensBorderRadius> values = [rounded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataUiDesignTokensBorderRadius && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataUiDesignTokensBorderRadius($value)'; } 
 }
@immutable final class PostPresetsResponseDataUiDesignTokensBorderWidth {const PostPresetsResponseDataUiDesignTokensBorderWidth._(this.value);

factory PostPresetsResponseDataUiDesignTokensBorderWidth.fromJson(String json) { return switch (json) {
  'thin' => thin,
  _ => PostPresetsResponseDataUiDesignTokensBorderWidth._(json),
}; }

static const PostPresetsResponseDataUiDesignTokensBorderWidth thin = PostPresetsResponseDataUiDesignTokensBorderWidth._('thin');

static const List<PostPresetsResponseDataUiDesignTokensBorderWidth> values = [thin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataUiDesignTokensBorderWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataUiDesignTokensBorderWidth($value)'; } 
 }
@immutable final class PostPresetsResponseDataUiDesignTokensTheme {const PostPresetsResponseDataUiDesignTokensTheme._(this.value);

factory PostPresetsResponseDataUiDesignTokensTheme.fromJson(String json) { return switch (json) {
  'dark' => dark,
  _ => PostPresetsResponseDataUiDesignTokensTheme._(json),
}; }

static const PostPresetsResponseDataUiDesignTokensTheme dark = PostPresetsResponseDataUiDesignTokensTheme._('dark');

static const List<PostPresetsResponseDataUiDesignTokensTheme> values = [dark];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataUiDesignTokensTheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataUiDesignTokensTheme($value)'; } 
 }
@immutable final class PostPresetsResponseDataUiDesignTokens {const PostPresetsResponseDataUiDesignTokens({required this.borderRadius, required this.borderWidth, required this.colors, required this.logo, required this.theme, this.spacingBase = 4.0, });

factory PostPresetsResponseDataUiDesignTokens.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataUiDesignTokens(
  borderRadius: PostPresetsResponseDataUiDesignTokensBorderRadius.fromJson(json['border_radius'] as String),
  borderWidth: PostPresetsResponseDataUiDesignTokensBorderWidth.fromJson(json['border_width'] as String),
  colors: PostPresetsResponseDataUiDesignTokensColors.fromJson(json['colors'] as Map<String, dynamic>),
  logo: json['logo'] as String,
  spacingBase: (json['spacing_base'] as num).toDouble(),
  theme: PostPresetsResponseDataUiDesignTokensTheme.fromJson(json['theme'] as String),
); }

final PostPresetsResponseDataUiDesignTokensBorderRadius borderRadius;

final PostPresetsResponseDataUiDesignTokensBorderWidth borderWidth;

final PostPresetsResponseDataUiDesignTokensColors colors;

final String logo;

final double spacingBase;

final PostPresetsResponseDataUiDesignTokensTheme theme;

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
PostPresetsResponseDataUiDesignTokens copyWith({PostPresetsResponseDataUiDesignTokensBorderRadius? borderRadius, PostPresetsResponseDataUiDesignTokensBorderWidth? borderWidth, PostPresetsResponseDataUiDesignTokensColors? colors, String? logo, double? spacingBase, PostPresetsResponseDataUiDesignTokensTheme? theme, }) { return PostPresetsResponseDataUiDesignTokens(
  borderRadius: borderRadius ?? this.borderRadius,
  borderWidth: borderWidth ?? this.borderWidth,
  colors: colors ?? this.colors,
  logo: logo ?? this.logo,
  spacingBase: spacingBase ?? this.spacingBase,
  theme: theme ?? this.theme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataUiDesignTokens &&
          borderRadius == other.borderRadius &&
          borderWidth == other.borderWidth &&
          colors == other.colors &&
          logo == other.logo &&
          spacingBase == other.spacingBase &&
          theme == other.theme; } 
@override int get hashCode { return Object.hash(borderRadius, borderWidth, colors, logo, spacingBase, theme); } 
@override String toString() { return 'PostPresetsResponseDataUiDesignTokens(borderRadius: $borderRadius, borderWidth: $borderWidth, colors: $colors, logo: $logo, spacingBase: $spacingBase, theme: $theme)'; } 
 }
