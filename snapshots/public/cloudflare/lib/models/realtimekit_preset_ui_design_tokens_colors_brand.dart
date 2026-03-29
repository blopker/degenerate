// GENERATED CODE - DO NOT MODIFY BY HAND

final class RealtimekitPresetUiDesignTokensColorsBrand {const RealtimekitPresetUiDesignTokensColorsBrand({this.$300 = '#844d1c', this.$400 = '#9d5b22', this.$500 = '#b56927', this.$600 = '#d37c30', this.$700 = '#d9904f', });

factory RealtimekitPresetUiDesignTokensColorsBrand.fromJson(Map<String, dynamic> json) { return RealtimekitPresetUiDesignTokensColorsBrand(
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
RealtimekitPresetUiDesignTokensColorsBrand copyWith({String? $300, String? $400, String? $500, String? $600, String? $700, }) { return RealtimekitPresetUiDesignTokensColorsBrand(
  $300: $300 ?? this.$300,
  $400: $400 ?? this.$400,
  $500: $500 ?? this.$500,
  $600: $600 ?? this.$600,
  $700: $700 ?? this.$700,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetUiDesignTokensColorsBrand &&
          $300 == other.$300 &&
          $400 == other.$400 &&
          $500 == other.$500 &&
          $600 == other.$600 &&
          $700 == other.$700; } 
@override int get hashCode { return Object.hash($300, $400, $500, $600, $700); } 
@override String toString() { return 'RealtimekitPresetUiDesignTokensColorsBrand(\$300: ${$300}, \$400: ${$400}, \$500: ${$500}, \$600: ${$600}, \$700: ${$700})'; } 
 }
