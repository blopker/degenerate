// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecretsStoreMessages2Source {const SecretsStoreMessages2Source({this.pointer});

factory SecretsStoreMessages2Source.fromJson(Map<String, dynamic> json) { return SecretsStoreMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
SecretsStoreMessages2Source copyWith({String Function()? pointer}) { return SecretsStoreMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'SecretsStoreMessages2Source(pointer: $pointer)'; } 
 }
