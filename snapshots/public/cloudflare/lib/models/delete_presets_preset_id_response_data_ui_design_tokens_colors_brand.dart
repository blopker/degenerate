// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand {const DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand({required this.$300, required this.$400, required this.$500, required this.$600, required this.$700, });

factory DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand(
  $300: json['300'] as String,
  $400: json['400'] as String,
  $500: json['500'] as String,
  $600: json['600'] as String,
  $700: json['700'] as String,
); }

final String $300;

final String $400;

final String $500;

final String $600;

final String $700;

Map<String, dynamic> toJson() { return {
  '300': $300,
  '400': $400,
  '500': $500,
  '600': $600,
  '700': $700,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('300') && json['300'] is String &&
      json.containsKey('400') && json['400'] is String &&
      json.containsKey('500') && json['500'] is String &&
      json.containsKey('600') && json['600'] is String &&
      json.containsKey('700') && json['700'] is String; } 
DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand copyWith({String? $300, String? $400, String? $500, String? $600, String? $700, }) { return DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand(
  $300: $300 ?? this.$300,
  $400: $400 ?? this.$400,
  $500: $500 ?? this.$500,
  $600: $600 ?? this.$600,
  $700: $700 ?? this.$700,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand &&
          $300 == other.$300 &&
          $400 == other.$400 &&
          $500 == other.$500 &&
          $600 == other.$600 &&
          $700 == other.$700; } 
@override int get hashCode { return Object.hash($300, $400, $500, $600, $700); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataUiDesignTokensColorsBrand(\$300: ${$300}, \$400: ${$400}, \$500: ${$500}, \$600: ${$600}, \$700: ${$700})'; } 
 }
