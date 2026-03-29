// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZonesSchemasMessages2Source {const ZonesSchemasMessages2Source({this.pointer});

factory ZonesSchemasMessages2Source.fromJson(Map<String, dynamic> json) { return ZonesSchemasMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesSchemasMessages2Source copyWith({String Function()? pointer}) { return ZonesSchemasMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'ZonesSchemasMessages2Source(pointer: $pointer)'; } 
 }
