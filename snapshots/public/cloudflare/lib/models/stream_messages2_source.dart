// GENERATED CODE - DO NOT MODIFY BY HAND

final class StreamMessages2Source {const StreamMessages2Source({this.pointer});

factory StreamMessages2Source.fromJson(Map<String, dynamic> json) { return StreamMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
StreamMessages2Source copyWith({String Function()? pointer}) { return StreamMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'StreamMessages2Source(pointer: $pointer)'; } 
 }
