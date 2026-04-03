// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_account_id.dart';import 'mconn_uuid.dart';@immutable final class MconnControllerConnectorIdentity {const MconnControllerConnectorIdentity({required this.accountId, required this.activated, required this.id, });

factory MconnControllerConnectorIdentity.fromJson(Map<String, dynamic> json) { return MconnControllerConnectorIdentity(
  accountId: MconnAccountId.fromJson(json['account_id'] as String),
  activated: json['activated'] as bool,
  id: MconnUuid.fromJson(json['id'] as String),
); }

/// Account identifier
final MconnAccountId accountId;

final bool activated;

final MconnUuid id;

Map<String, dynamic> toJson() { return {
  'account_id': accountId.toJson(),
  'activated': activated,
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_id') &&
      json.containsKey('activated') && json['activated'] is bool &&
      json.containsKey('id'); } 
MconnControllerConnectorIdentity copyWith({MconnAccountId? accountId, bool? activated, MconnUuid? id, }) { return MconnControllerConnectorIdentity(
  accountId: accountId ?? this.accountId,
  activated: activated ?? this.activated,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerConnectorIdentity &&
          accountId == other.accountId &&
          activated == other.activated &&
          id == other.id; } 
@override int get hashCode { return Object.hash(accountId, activated, id); } 
@override String toString() { return 'MconnControllerConnectorIdentity(accountId: $accountId, activated: $activated, id: $id)'; } 
 }
