// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_batch_sending_domain_restrictions_response_result_deletes.dart';@immutable final class EmailSecurityBatchSendingDomainRestrictionsResponseResult {const EmailSecurityBatchSendingDomainRestrictionsResponseResult({required this.deletes});

factory EmailSecurityBatchSendingDomainRestrictionsResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchSendingDomainRestrictionsResponseResult(
  deletes: (json['deletes'] as List<dynamic>).map((e) => EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes> deletes;

Map<String, dynamic> toJson() { return {
  'deletes': deletes.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deletes'); } 
EmailSecurityBatchSendingDomainRestrictionsResponseResult copyWith({List<EmailSecurityBatchSendingDomainRestrictionsResponseResultDeletes>? deletes}) { return EmailSecurityBatchSendingDomainRestrictionsResponseResult(
  deletes: deletes ?? this.deletes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchSendingDomainRestrictionsResponseResult &&
          listEquals(deletes, other.deletes); } 
@override int get hashCode { return Object.hashAll(deletes).hashCode; } 
@override String toString() { return 'EmailSecurityBatchSendingDomainRestrictionsResponseResult(deletes: $deletes)'; } 
 }
