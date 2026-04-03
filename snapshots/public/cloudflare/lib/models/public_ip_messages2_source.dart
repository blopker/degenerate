// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PublicIpMessages2Source {const PublicIpMessages2Source({this.pointer});

factory PublicIpMessages2Source.fromJson(Map<String, dynamic> json) { return PublicIpMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
PublicIpMessages2Source copyWith({String Function()? pointer}) { return PublicIpMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PublicIpMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'PublicIpMessages2Source(pointer: $pointer)'; } 
 }
