// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'connect_account_reference_account.dart';/// Type of the account referenced.
@immutable final class ConnectAccountReferenceType {const ConnectAccountReferenceType._(this.value);

factory ConnectAccountReferenceType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => ConnectAccountReferenceType._(json),
}; }

static const ConnectAccountReferenceType account = ConnectAccountReferenceType._('account');

static const ConnectAccountReferenceType self = ConnectAccountReferenceType._('self');

static const List<ConnectAccountReferenceType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConnectAccountReferenceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ConnectAccountReferenceType($value)'; } 
 }
/// 
@immutable final class ConnectAccountReference {const ConnectAccountReference({required this.type, this.account, });

factory ConnectAccountReference.fromJson(Map<String, dynamic> json) { return ConnectAccountReference(
  account: json['account'] != null ? OneOf2.parse(json['account'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null,
  type: ConnectAccountReferenceType.fromJson(json['type'] as String),
); }

/// The connected account being referenced when `type` is `account`.
final ConnectAccountReferenceAccount? account;

/// Type of the account referenced.
final ConnectAccountReferenceType type;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
ConnectAccountReference copyWith({ConnectAccountReferenceAccount Function()? account, ConnectAccountReferenceType? type, }) { return ConnectAccountReference(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectAccountReference &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'ConnectAccountReference(account: $account, type: $type)'; } 
 }
