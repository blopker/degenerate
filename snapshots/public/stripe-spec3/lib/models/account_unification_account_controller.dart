// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_unification_account_controller_fees.dart';import 'account_unification_account_controller_losses.dart';import 'account_unification_account_controller_stripe_dashboard.dart';/// A value indicating responsibility for collecting requirements on this account. Only returned when the Connect application retrieving the resource controls the account.
@immutable final class AccountUnificationAccountControllerRequirementCollection {const AccountUnificationAccountControllerRequirementCollection._(this.value);

factory AccountUnificationAccountControllerRequirementCollection.fromJson(String json) { return switch (json) {
  'application' => application,
  'stripe' => stripe,
  _ => AccountUnificationAccountControllerRequirementCollection._(json),
}; }

static const AccountUnificationAccountControllerRequirementCollection application = AccountUnificationAccountControllerRequirementCollection._('application');

static const AccountUnificationAccountControllerRequirementCollection stripe = AccountUnificationAccountControllerRequirementCollection._('stripe');

static const List<AccountUnificationAccountControllerRequirementCollection> values = [application, stripe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountUnificationAccountControllerRequirementCollection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountUnificationAccountControllerRequirementCollection($value)'; } 
 }
/// The controller type. Can be `application`, if a Connect application controls the account, or `account`, if the account controls itself.
@immutable final class AccountUnificationAccountControllerType {const AccountUnificationAccountControllerType._(this.value);

factory AccountUnificationAccountControllerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'application' => application,
  _ => AccountUnificationAccountControllerType._(json),
}; }

static const AccountUnificationAccountControllerType account = AccountUnificationAccountControllerType._('account');

static const AccountUnificationAccountControllerType application = AccountUnificationAccountControllerType._('application');

static const List<AccountUnificationAccountControllerType> values = [account, application];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountUnificationAccountControllerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountUnificationAccountControllerType($value)'; } 
 }
/// 
@immutable final class AccountUnificationAccountController {const AccountUnificationAccountController({required this.type, this.fees, this.isController, this.losses, this.requirementCollection, this.stripeDashboard, });

factory AccountUnificationAccountController.fromJson(Map<String, dynamic> json) { return AccountUnificationAccountController(
  fees: json['fees'] != null ? AccountUnificationAccountControllerFees.fromJson(json['fees'] as Map<String, dynamic>) : null,
  isController: json['is_controller'] as bool?,
  losses: json['losses'] != null ? AccountUnificationAccountControllerLosses.fromJson(json['losses'] as Map<String, dynamic>) : null,
  requirementCollection: json['requirement_collection'] != null ? AccountUnificationAccountControllerRequirementCollection.fromJson(json['requirement_collection'] as String) : null,
  stripeDashboard: json['stripe_dashboard'] != null ? AccountUnificationAccountControllerStripeDashboard.fromJson(json['stripe_dashboard'] as Map<String, dynamic>) : null,
  type: AccountUnificationAccountControllerType.fromJson(json['type'] as String),
); }

final AccountUnificationAccountControllerFees? fees;

/// `true` if the Connect application retrieving the resource controls the account and can therefore exercise [platform controls](https://docs.stripe.com/connect/platform-controls-for-standard-accounts). Otherwise, this field is null.
final bool? isController;

final AccountUnificationAccountControllerLosses? losses;

/// A value indicating responsibility for collecting requirements on this account. Only returned when the Connect application retrieving the resource controls the account.
final AccountUnificationAccountControllerRequirementCollection? requirementCollection;

final AccountUnificationAccountControllerStripeDashboard? stripeDashboard;

/// The controller type. Can be `application`, if a Connect application controls the account, or `account`, if the account controls itself.
final AccountUnificationAccountControllerType type;

Map<String, dynamic> toJson() { return {
  if (fees != null) 'fees': fees?.toJson(),
  'is_controller': ?isController,
  if (losses != null) 'losses': losses?.toJson(),
  if (requirementCollection != null) 'requirement_collection': requirementCollection?.toJson(),
  if (stripeDashboard != null) 'stripe_dashboard': stripeDashboard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
AccountUnificationAccountController copyWith({AccountUnificationAccountControllerFees Function()? fees, bool Function()? isController, AccountUnificationAccountControllerLosses Function()? losses, AccountUnificationAccountControllerRequirementCollection Function()? requirementCollection, AccountUnificationAccountControllerStripeDashboard Function()? stripeDashboard, AccountUnificationAccountControllerType? type, }) { return AccountUnificationAccountController(
  fees: fees != null ? fees() : this.fees,
  isController: isController != null ? isController() : this.isController,
  losses: losses != null ? losses() : this.losses,
  requirementCollection: requirementCollection != null ? requirementCollection() : this.requirementCollection,
  stripeDashboard: stripeDashboard != null ? stripeDashboard() : this.stripeDashboard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUnificationAccountController &&
          fees == other.fees &&
          isController == other.isController &&
          losses == other.losses &&
          requirementCollection == other.requirementCollection &&
          stripeDashboard == other.stripeDashboard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(fees, isController, losses, requirementCollection, stripeDashboard, type); } 
@override String toString() { return 'AccountUnificationAccountController(fees: $fees, isController: $isController, losses: $losses, requirementCollection: $requirementCollection, stripeDashboard: $stripeDashboard, type: $type)'; } 
 }
