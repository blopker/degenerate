// GENERATED CODE - DO NOT MODIFY BY HAND

final class DnssecMessages2Source {const DnssecMessages2Source({this.pointer});

factory DnssecMessages2Source.fromJson(Map<String, dynamic> json) { return DnssecMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
DnssecMessages2Source copyWith({String Function()? pointer}) { return DnssecMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnssecMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'DnssecMessages2Source(pointer: $pointer)'; } 
 }
