// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringMessages2Source {const DigitalExperienceMonitoringMessages2Source({this.pointer});

factory DigitalExperienceMonitoringMessages2Source.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
DigitalExperienceMonitoringMessages2Source copyWith({String Function()? pointer}) { return DigitalExperienceMonitoringMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringMessages2Source(pointer: $pointer)'; } 
 }
