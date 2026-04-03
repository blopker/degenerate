// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PayPerCrawlErrorSource {const PayPerCrawlErrorSource({this.pointer});

factory PayPerCrawlErrorSource.fromJson(Map<String, dynamic> json) { return PayPerCrawlErrorSource(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
PayPerCrawlErrorSource copyWith({String Function()? pointer}) { return PayPerCrawlErrorSource(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PayPerCrawlErrorSource &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'PayPerCrawlErrorSource(pointer: $pointer)'; } 
 }
