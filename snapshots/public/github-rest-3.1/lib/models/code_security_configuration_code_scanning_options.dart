// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Feature options for code scanning
@immutable final class CodeSecurityConfigurationCodeScanningOptions {const CodeSecurityConfigurationCodeScanningOptions({this.allowAdvanced});

factory CodeSecurityConfigurationCodeScanningOptions.fromJson(Map<String, dynamic> json) { return CodeSecurityConfigurationCodeScanningOptions(
  allowAdvanced: json['allow_advanced'] as bool?,
); }

/// Whether to allow repos which use advanced setup
final bool? allowAdvanced;

Map<String, dynamic> toJson() { return {
  'allow_advanced': ?allowAdvanced,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allow_advanced'}.contains(key)); } 
CodeSecurityConfigurationCodeScanningOptions copyWith({bool? Function()? allowAdvanced}) { return CodeSecurityConfigurationCodeScanningOptions(
  allowAdvanced: allowAdvanced != null ? allowAdvanced() : this.allowAdvanced,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityConfigurationCodeScanningOptions &&
          allowAdvanced == other.allowAdvanced; } 
@override int get hashCode { return allowAdvanced.hashCode; } 
@override String toString() { return 'CodeSecurityConfigurationCodeScanningOptions(allowAdvanced: $allowAdvanced)'; } 
 }
