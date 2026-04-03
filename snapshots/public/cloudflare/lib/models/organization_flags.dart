// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Enable features for Organizations.
@immutable final class OrganizationFlags {const OrganizationFlags({required this.accountCreation, required this.accountDeletion, required this.accountMigration, required this.accountMobility, required this.subOrgCreation, });

factory OrganizationFlags.fromJson(Map<String, dynamic> json) { return OrganizationFlags(
  accountCreation: json['account_creation'] as String,
  accountDeletion: json['account_deletion'] as String,
  accountMigration: json['account_migration'] as String,
  accountMobility: json['account_mobility'] as String,
  subOrgCreation: json['sub_org_creation'] as String,
); }

final String accountCreation;

final String accountDeletion;

final String accountMigration;

final String accountMobility;

final String subOrgCreation;

Map<String, dynamic> toJson() { return {
  'account_creation': accountCreation,
  'account_deletion': accountDeletion,
  'account_migration': accountMigration,
  'account_mobility': accountMobility,
  'sub_org_creation': subOrgCreation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_creation') && json['account_creation'] is String &&
      json.containsKey('account_deletion') && json['account_deletion'] is String &&
      json.containsKey('account_migration') && json['account_migration'] is String &&
      json.containsKey('account_mobility') && json['account_mobility'] is String &&
      json.containsKey('sub_org_creation') && json['sub_org_creation'] is String; } 
OrganizationFlags copyWith({String? accountCreation, String? accountDeletion, String? accountMigration, String? accountMobility, String? subOrgCreation, }) { return OrganizationFlags(
  accountCreation: accountCreation ?? this.accountCreation,
  accountDeletion: accountDeletion ?? this.accountDeletion,
  accountMigration: accountMigration ?? this.accountMigration,
  accountMobility: accountMobility ?? this.accountMobility,
  subOrgCreation: subOrgCreation ?? this.subOrgCreation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationFlags &&
          accountCreation == other.accountCreation &&
          accountDeletion == other.accountDeletion &&
          accountMigration == other.accountMigration &&
          accountMobility == other.accountMobility &&
          subOrgCreation == other.subOrgCreation; } 
@override int get hashCode { return Object.hash(accountCreation, accountDeletion, accountMigration, accountMobility, subOrgCreation); } 
@override String toString() { return 'OrganizationFlags(accountCreation: $accountCreation, accountDeletion: $accountDeletion, accountMigration: $accountMigration, accountMobility: $accountMobility, subOrgCreation: $subOrgCreation)'; } 
 }
