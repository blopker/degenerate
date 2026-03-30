// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudforceOneRequestsMessages2Source {const CloudforceOneRequestsMessages2Source({this.pointer});

factory CloudforceOneRequestsMessages2Source.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
CloudforceOneRequestsMessages2Source copyWith({String Function()? pointer}) { return CloudforceOneRequestsMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'CloudforceOneRequestsMessages2Source(pointer: $pointer)'; } 
 }
