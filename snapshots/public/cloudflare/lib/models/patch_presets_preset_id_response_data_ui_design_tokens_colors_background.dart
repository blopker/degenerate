// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground {const PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground({this.$600 = '#222222', this.$700 = '#1f1f1f', this.$800 = '#1b1b1b', this.$900 = '#181818', this.$1000 = '#141414', });

factory PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground(
  $600: json['600'] as String,
  $700: json['700'] as String,
  $800: json['800'] as String,
  $900: json['900'] as String,
  $1000: json['1000'] as String,
); }

final String $600;

final String $700;

final String $800;

final String $900;

final String $1000;

Map<String, dynamic> toJson() { return {
  '600': $600,
  '700': $700,
  '800': $800,
  '900': $900,
  '1000': $1000,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('600') && json['600'] is String &&
      json.containsKey('700') && json['700'] is String &&
      json.containsKey('800') && json['800'] is String &&
      json.containsKey('900') && json['900'] is String &&
      json.containsKey('1000') && json['1000'] is String; } 
PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground copyWith({String? $600, String? $700, String? $800, String? $900, String? $1000, }) { return PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground(
  $600: $600 ?? this.$600,
  $700: $700 ?? this.$700,
  $800: $800 ?? this.$800,
  $900: $900 ?? this.$900,
  $1000: $1000 ?? this.$1000,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground &&
          $600 == other.$600 &&
          $700 == other.$700 &&
          $800 == other.$800 &&
          $900 == other.$900 &&
          $1000 == other.$1000; } 
@override int get hashCode { return Object.hash($600, $700, $800, $900, $1000); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataUiDesignTokensColorsBackground(\$600: ${$600}, \$700: ${$700}, \$800: ${$800}, \$900: ${$900}, \$1000: ${$1000})'; } 
 }
