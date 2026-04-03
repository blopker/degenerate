// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ExistingColumn2 {const ExistingColumn2({required this.entryId});

factory ExistingColumn2.fromJson(Map<String, dynamic> json) { return ExistingColumn2(
  entryId: json['entry_id'] as String,
); }

final String entryId;

Map<String, dynamic> toJson() { return {
  'entry_id': entryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('entry_id') && json['entry_id'] is String; } 
ExistingColumn2 copyWith({String? entryId}) { return ExistingColumn2(
  entryId: entryId ?? this.entryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExistingColumn2 &&
          entryId == other.entryId; } 
@override int get hashCode { return entryId.hashCode; } 
@override String toString() { return 'ExistingColumn2(entryId: $entryId)'; } 
 }
