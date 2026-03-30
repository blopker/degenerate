// GENERATED CODE - DO NOT MODIFY BY HAND

final class CallsMessages2Source {const CallsMessages2Source({this.pointer});

factory CallsMessages2Source.fromJson(Map<String, dynamic> json) { return CallsMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
CallsMessages2Source copyWith({String Function()? pointer}) { return CallsMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'CallsMessages2Source(pointer: $pointer)'; } 
 }
