// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZoneActivationMessages2Source {const ZoneActivationMessages2Source({this.pointer});

factory ZoneActivationMessages2Source.fromJson(Map<String, dynamic> json) { return ZoneActivationMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
ZoneActivationMessages2Source copyWith({String Function()? pointer}) { return ZoneActivationMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneActivationMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'ZoneActivationMessages2Source(pointer: $pointer)'; } 
 }
