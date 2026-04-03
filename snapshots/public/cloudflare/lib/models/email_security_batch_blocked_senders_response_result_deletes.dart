// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityBatchBlockedSendersResponseResultDeletes {const EmailSecurityBatchBlockedSendersResponseResultDeletes({required this.id});

factory EmailSecurityBatchBlockedSendersResponseResultDeletes.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchBlockedSendersResponseResultDeletes(
  id: (json['id'] as num).toInt(),
); }

/// The unique identifier for the allow policy.
final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityBatchBlockedSendersResponseResultDeletes copyWith({int? id}) { return EmailSecurityBatchBlockedSendersResponseResultDeletes(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchBlockedSendersResponseResultDeletes &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityBatchBlockedSendersResponseResultDeletes(id: $id)'; } 
 }
