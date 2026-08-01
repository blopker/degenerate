// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Security Configuration feature options for code scanning
@immutable final class CodeScanningOptions {const CodeScanningOptions({this.allowAdvanced = const Omittable.absent()});

factory CodeScanningOptions.fromJson(Map<String, dynamic> json) { return CodeScanningOptions(
  allowAdvanced: json.containsKey('allow_advanced') ? Omittable(json['allow_advanced'] as bool?) : const Omittable.absent(),
); }

/// Whether to allow repos which use advanced setup
final Omittable<bool?> allowAdvanced;

Map<String, dynamic> toJson() { return {
  if (allowAdvanced.isPresent) 'allow_advanced': allowAdvanced.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allow_advanced'}.contains(key)); } 
CodeScanningOptions copyWith({Omittable<bool?>? allowAdvanced}) { return CodeScanningOptions(
  allowAdvanced: allowAdvanced ?? this.allowAdvanced,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningOptions &&
          allowAdvanced == other.allowAdvanced; } 
@override int get hashCode { return allowAdvanced.hashCode; } 
@override String toString() { return 'CodeScanningOptions(allowAdvanced: $allowAdvanced)'; } 
 }
