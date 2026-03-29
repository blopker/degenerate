// GENERATED CODE - DO NOT MODIFY BY HAND

final class DlpMessages2Source {const DlpMessages2Source({this.pointer});

factory DlpMessages2Source.fromJson(Map<String, dynamic> json) { return DlpMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
DlpMessages2Source copyWith({String Function()? pointer}) { return DlpMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'DlpMessages2Source(pointer: $pointer)'; } 
 }
