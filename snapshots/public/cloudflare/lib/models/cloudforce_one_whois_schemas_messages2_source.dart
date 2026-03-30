// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudforceOneWhoisSchemasMessages2Source {const CloudforceOneWhoisSchemasMessages2Source({this.pointer});

factory CloudforceOneWhoisSchemasMessages2Source.fromJson(Map<String, dynamic> json) { return CloudforceOneWhoisSchemasMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
CloudforceOneWhoisSchemasMessages2Source copyWith({String Function()? pointer}) { return CloudforceOneWhoisSchemasMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneWhoisSchemasMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'CloudforceOneWhoisSchemasMessages2Source(pointer: $pointer)'; } 
 }
