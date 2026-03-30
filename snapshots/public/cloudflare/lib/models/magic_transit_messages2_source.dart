// GENERATED CODE - DO NOT MODIFY BY HAND

final class MagicTransitMessages2Source {const MagicTransitMessages2Source({this.pointer});

factory MagicTransitMessages2Source.fromJson(Map<String, dynamic> json) { return MagicTransitMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
MagicTransitMessages2Source copyWith({String Function()? pointer}) { return MagicTransitMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTransitMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'MagicTransitMessages2Source(pointer: $pointer)'; } 
 }
