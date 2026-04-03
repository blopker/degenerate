// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SpectrumAnalyticsMessages2Source {const SpectrumAnalyticsMessages2Source({this.pointer});

factory SpectrumAnalyticsMessages2Source.fromJson(Map<String, dynamic> json) { return SpectrumAnalyticsMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
SpectrumAnalyticsMessages2Source copyWith({String Function()? pointer}) { return SpectrumAnalyticsMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumAnalyticsMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'SpectrumAnalyticsMessages2Source(pointer: $pointer)'; } 
 }
