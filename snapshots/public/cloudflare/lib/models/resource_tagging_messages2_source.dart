// GENERATED CODE - DO NOT MODIFY BY HAND

final class ResourceTaggingMessages2Source {const ResourceTaggingMessages2Source({this.pointer});

factory ResourceTaggingMessages2Source.fromJson(Map<String, dynamic> json) { return ResourceTaggingMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
ResourceTaggingMessages2Source copyWith({String Function()? pointer}) { return ResourceTaggingMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'ResourceTaggingMessages2Source(pointer: $pointer)'; } 
 }
