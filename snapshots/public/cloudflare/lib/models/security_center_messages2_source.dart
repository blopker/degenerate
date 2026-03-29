// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecurityCenterMessages2Source {const SecurityCenterMessages2Source({this.pointer});

factory SecurityCenterMessages2Source.fromJson(Map<String, dynamic> json) { return SecurityCenterMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SecurityCenterMessages2Source copyWith({String Function()? pointer}) { return SecurityCenterMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityCenterMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'SecurityCenterMessages2Source(pointer: $pointer)'; } 
 }
