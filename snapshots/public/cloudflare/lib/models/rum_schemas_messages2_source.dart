// GENERATED CODE - DO NOT MODIFY BY HAND

final class RumSchemasMessages2Source {const RumSchemasMessages2Source({this.pointer});

factory RumSchemasMessages2Source.fromJson(Map<String, dynamic> json) { return RumSchemasMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
RumSchemasMessages2Source copyWith({String Function()? pointer}) { return RumSchemasMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumSchemasMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'RumSchemasMessages2Source(pointer: $pointer)'; } 
 }
