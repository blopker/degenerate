// GENERATED CODE - DO NOT MODIFY BY HAND

final class IamSchemasMessages2Source {const IamSchemasMessages2Source({this.pointer});

factory IamSchemasMessages2Source.fromJson(Map<String, dynamic> json) { return IamSchemasMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IamSchemasMessages2Source copyWith({String Function()? pointer}) { return IamSchemasMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSchemasMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'IamSchemasMessages2Source(pointer: $pointer)'; } 
 }
