// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsAnalyticsMessages2Source {const DnsAnalyticsMessages2Source({this.pointer});

factory DnsAnalyticsMessages2Source.fromJson(Map<String, dynamic> json) { return DnsAnalyticsMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
DnsAnalyticsMessages2Source copyWith({String Function()? pointer}) { return DnsAnalyticsMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsAnalyticsMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'DnsAnalyticsMessages2Source(pointer: $pointer)'; } 
 }
