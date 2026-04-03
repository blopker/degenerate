// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CustomIndicatorFeedsSchemasMessages2Source {const CustomIndicatorFeedsSchemasMessages2Source({this.pointer});

factory CustomIndicatorFeedsSchemasMessages2Source.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsSchemasMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
CustomIndicatorFeedsSchemasMessages2Source copyWith({String Function()? pointer}) { return CustomIndicatorFeedsSchemasMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsSchemasMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'CustomIndicatorFeedsSchemasMessages2Source(pointer: $pointer)'; } 
 }
