// GENERATED CODE - DO NOT MODIFY BY HAND

final class CcMessages2Source {const CcMessages2Source({this.pointer});

factory CcMessages2Source.fromJson(Map<String, dynamic> json) { return CcMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
CcMessages2Source copyWith({String Function()? pointer}) { return CcMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CcMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'CcMessages2Source(pointer: $pointer)'; } 
 }
