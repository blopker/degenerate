// GENERATED CODE - DO NOT MODIFY BY HAND

final class LogcontrolMessages2Source {const LogcontrolMessages2Source({this.pointer});

factory LogcontrolMessages2Source.fromJson(Map<String, dynamic> json) { return LogcontrolMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
LogcontrolMessages2Source copyWith({String Function()? pointer}) { return LogcontrolMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogcontrolMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'LogcontrolMessages2Source(pointer: $pointer)'; } 
 }
