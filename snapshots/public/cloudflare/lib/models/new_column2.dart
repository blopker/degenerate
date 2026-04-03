// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NewColumn2 {const NewColumn2({required this.entryName});

factory NewColumn2.fromJson(Map<String, dynamic> json) { return NewColumn2(
  entryName: json['entry_name'] as String,
); }

final String entryName;

Map<String, dynamic> toJson() { return {
  'entry_name': entryName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('entry_name') && json['entry_name'] is String; } 
NewColumn2 copyWith({String? entryName}) { return NewColumn2(
  entryName: entryName ?? this.entryName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NewColumn2 &&
          entryName == other.entryName; } 
@override int get hashCode { return entryName.hashCode; } 
@override String toString() { return 'NewColumn2(entryName: $entryName)'; } 
 }
