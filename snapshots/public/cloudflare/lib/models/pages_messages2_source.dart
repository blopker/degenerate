// GENERATED CODE - DO NOT MODIFY BY HAND

final class PagesMessages2Source {const PagesMessages2Source({this.pointer});

factory PagesMessages2Source.fromJson(Map<String, dynamic> json) { return PagesMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PagesMessages2Source copyWith({String Function()? pointer}) { return PagesMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'PagesMessages2Source(pointer: $pointer)'; } 
 }
