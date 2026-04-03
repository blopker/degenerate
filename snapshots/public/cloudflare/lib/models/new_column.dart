// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NewColumn {const NewColumn({required this.entryName});

factory NewColumn.fromJson(Map<String, dynamic> json) { return NewColumn(
  entryName: json['entry_name'] as String,
); }

final String entryName;

Map<String, dynamic> toJson() { return {
  'entry_name': entryName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('entry_name') && json['entry_name'] is String; } 
NewColumn copyWith({String? entryName}) { return NewColumn(
  entryName: entryName ?? this.entryName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NewColumn &&
          entryName == other.entryName; } 
@override int get hashCode { return entryName.hashCode; } 
@override String toString() { return 'NewColumn(entryName: $entryName)'; } 
 }
