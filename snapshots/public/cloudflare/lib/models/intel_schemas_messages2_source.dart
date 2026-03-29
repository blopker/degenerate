// GENERATED CODE - DO NOT MODIFY BY HAND

final class IntelSchemasMessages2Source {const IntelSchemasMessages2Source({this.pointer});

factory IntelSchemasMessages2Source.fromJson(Map<String, dynamic> json) { return IntelSchemasMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
IntelSchemasMessages2Source copyWith({String Function()? pointer}) { return IntelSchemasMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelSchemasMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'IntelSchemasMessages2Source(pointer: $pointer)'; } 
 }
