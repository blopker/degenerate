// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages22Source {const Messages22Source({this.pointer});

factory Messages22Source.fromJson(Map<String, dynamic> json) { return Messages22Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
Messages22Source copyWith({String Function()? pointer}) { return Messages22Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages22Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'Messages22Source(pointer: $pointer)'; } 
 }
