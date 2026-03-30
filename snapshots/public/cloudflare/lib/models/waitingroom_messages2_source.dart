// GENERATED CODE - DO NOT MODIFY BY HAND

final class WaitingroomMessages2Source {const WaitingroomMessages2Source({this.pointer});

factory WaitingroomMessages2Source.fromJson(Map<String, dynamic> json) { return WaitingroomMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
WaitingroomMessages2Source copyWith({String Function()? pointer}) { return WaitingroomMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'WaitingroomMessages2Source(pointer: $pointer)'; } 
 }
