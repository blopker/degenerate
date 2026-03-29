// GENERATED CODE - DO NOT MODIFY BY HAND

final class BotManagementMessages2Source {const BotManagementMessages2Source({this.pointer});

factory BotManagementMessages2Source.fromJson(Map<String, dynamic> json) { return BotManagementMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BotManagementMessages2Source copyWith({String Function()? pointer}) { return BotManagementMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'BotManagementMessages2Source(pointer: $pointer)'; } 
 }
