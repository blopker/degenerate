// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_provider_id.dart';final class McnDeletedProvider {const McnDeletedProvider({required this.id});

factory McnDeletedProvider.fromJson(Map<String, dynamic> json) { return McnDeletedProvider(
  id: McnProviderId.fromJson(json['id'] as String),
); }

final McnProviderId id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
McnDeletedProvider copyWith({McnProviderId? id}) { return McnDeletedProvider(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnDeletedProvider &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'McnDeletedProvider(id: $id)'; } 
 }
