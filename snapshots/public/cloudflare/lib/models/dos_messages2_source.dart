// GENERATED CODE - DO NOT MODIFY BY HAND

final class DosMessages2Source {const DosMessages2Source({this.pointer});

factory DosMessages2Source.fromJson(Map<String, dynamic> json) { return DosMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DosMessages2Source copyWith({String Function()? pointer}) { return DosMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'DosMessages2Source(pointer: $pointer)'; } 
 }
