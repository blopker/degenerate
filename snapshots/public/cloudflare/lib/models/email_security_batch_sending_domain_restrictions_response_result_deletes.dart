// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes {const EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes({required this.id});

factory EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes(
  id: (json['id'] as num).toInt(),
); }

final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes copyWith({int? id}) { return EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes(id: $id)'; } 
 }
