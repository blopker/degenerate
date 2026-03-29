// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudConnectorMessages2Source {const CloudConnectorMessages2Source({this.pointer});

factory CloudConnectorMessages2Source.fromJson(Map<String, dynamic> json) { return CloudConnectorMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
CloudConnectorMessages2Source copyWith({String Function()? pointer}) { return CloudConnectorMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudConnectorMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'CloudConnectorMessages2Source(pointer: $pointer)'; } 
 }
