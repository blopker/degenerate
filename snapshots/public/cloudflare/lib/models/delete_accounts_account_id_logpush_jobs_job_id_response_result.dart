// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_id.dart';@immutable final class DeleteAccountsAccountIdLogpushJobsJobIdResponseResult {const DeleteAccountsAccountIdLogpushJobsJobIdResponseResult({this.id});

factory DeleteAccountsAccountIdLogpushJobsJobIdResponseResult.fromJson(Map<String, dynamic> json) { return DeleteAccountsAccountIdLogpushJobsJobIdResponseResult(
  id: json['id'] != null ? LogpushId.fromJson(json['id'] as num) : null,
); }

/// Unique id of the job.
final LogpushId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
DeleteAccountsAccountIdLogpushJobsJobIdResponseResult copyWith({LogpushId Function()? id}) { return DeleteAccountsAccountIdLogpushJobsJobIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteAccountsAccountIdLogpushJobsJobIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'DeleteAccountsAccountIdLogpushJobsJobIdResponseResult(id: $id)'; } 
 }
