// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_onramp_id.dart';@immutable final class McnDeletedOnramp {const McnDeletedOnramp({required this.id});

factory McnDeletedOnramp.fromJson(Map<String, dynamic> json) { return McnDeletedOnramp(
  id: McnOnrampId.fromJson(json['id'] as String),
); }

final McnOnrampId id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
McnDeletedOnramp copyWith({McnOnrampId? id}) { return McnDeletedOnramp(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnDeletedOnramp &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'McnDeletedOnramp(id: $id)'; } 
 }
