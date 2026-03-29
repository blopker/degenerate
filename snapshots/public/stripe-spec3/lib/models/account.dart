// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_business_profile2.dart';import 'account_capabilities.dart';import 'account_external_accounts.dart';import 'account_future_requirements.dart';import 'account_groups.dart';import 'account_requirements.dart';import 'account_settings2.dart';import 'account_tos_acceptance.dart';import 'account_unification_account_controller.dart';import 'legal_entity_company.dart';import 'person.dart';/// The business type.
final class AccountBusinessType {const AccountBusinessType._(this.value);

factory AccountBusinessType.fromJson(String json) { return switch (json) {
  'company' => company,
  'government_entity' => governmentEntity,
  'individual' => individual,
  'non_profit' => nonProfit,
  _ => AccountBusinessType._(json),
}; }

static const AccountBusinessType company = AccountBusinessType._('company');

static const AccountBusinessType governmentEntity = AccountBusinessType._('government_entity');

static const AccountBusinessType individual = AccountBusinessType._('individual');

static const AccountBusinessType nonProfit = AccountBusinessType._('non_profit');

static const List<AccountBusinessType> values = [company, governmentEntity, individual, nonProfit];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountBusinessType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountBusinessType($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class AccountObject {const AccountObject._(this.value);

factory AccountObject.fromJson(String json) { return switch (json) {
  'account' => account,
  _ => AccountObject._(json),
}; }

static const AccountObject account = AccountObject._('account');

static const List<AccountObject> values = [account];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountObject($value)'; } 
 }
/// The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
final class AccountType {const AccountType._(this.value);

factory AccountType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  'express' => express,
  'none' => none,
  'standard' => standard,
  _ => AccountType._(json),
}; }

static const AccountType custom = AccountType._('custom');

static const AccountType express = AccountType._('express');

static const AccountType none = AccountType._('none');

static const AccountType standard = AccountType._('standard');

static const List<AccountType> values = [custom, express, none, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountType($value)'; } 
 }
/// This is an object representing a Stripe account. You can retrieve it to see
/// properties on the account like its current requirements or if the account is
/// enabled to make live charges or receive payouts.
/// 
/// For accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection)
/// is `application`, which includes Custom accounts, the properties below are always
/// returned.
/// 
/// For accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection)
/// is `stripe`, which includes Standard and Express accounts, some properties are only returned
/// until you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions)
/// to start Connect Onboarding. Learn about the [differences between accounts](/connect/accounts).
final class Account {const Account({this.businessProfile, this.businessType, this.capabilities, this.chargesEnabled, this.company, this.controller, this.country, this.created, this.defaultCurrency, this.detailsSubmitted, this.email, this.externalAccounts, this.futureRequirements, this.groups, required this.id, this.individual, this.metadata, required this.object, this.payoutsEnabled, this.requirements, this.settings, this.tosAcceptance, this.type, });

factory Account.fromJson(Map<String, dynamic> json) { return Account(
  businessProfile: json['business_profile'] != null ? AccountBusinessProfile2.fromJson(json['business_profile'] as Map<String, dynamic>) : null,
  businessType: json['business_type'] != null ? AccountBusinessType.fromJson(json['business_type'] as String) : null,
  capabilities: json['capabilities'] != null ? AccountCapabilities.fromJson(json['capabilities'] as Map<String, dynamic>) : null,
  chargesEnabled: json['charges_enabled'] as bool?,
  company: json['company'] != null ? LegalEntityCompany.fromJson(json['company'] as Map<String, dynamic>) : null,
  controller: json['controller'] != null ? AccountUnificationAccountController.fromJson(json['controller'] as Map<String, dynamic>) : null,
  country: json['country'] as String?,
  created: json['created'] != null ? (json['created'] as num).toInt() : null,
  defaultCurrency: json['default_currency'] as String?,
  detailsSubmitted: json['details_submitted'] as bool?,
  email: json['email'] as String?,
  externalAccounts: json['external_accounts'] != null ? AccountExternalAccounts.fromJson(json['external_accounts'] as Map<String, dynamic>) : null,
  futureRequirements: json['future_requirements'] != null ? AccountFutureRequirements.fromJson(json['future_requirements'] as Map<String, dynamic>) : null,
  groups: json['groups'] != null ? AccountGroups.fromJson(json['groups'] as Map<String, dynamic>) : null,
  id: json['id'] as String,
  individual: json['individual'] != null ? Person.fromJson(json['individual'] as Map<String, dynamic>) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  object: AccountObject.fromJson(json['object'] as String),
  payoutsEnabled: json['payouts_enabled'] as bool?,
  requirements: json['requirements'] != null ? AccountRequirements.fromJson(json['requirements'] as Map<String, dynamic>) : null,
  settings: json['settings'] != null ? AccountSettings2.fromJson(json['settings'] as Map<String, dynamic>) : null,
  tosAcceptance: json['tos_acceptance'] != null ? AccountTosAcceptance.fromJson(json['tos_acceptance'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? AccountType.fromJson(json['type'] as String) : null,
); }

/// Business information about the account.
final AccountBusinessProfile2? businessProfile;

/// The business type.
final AccountBusinessType? businessType;

final AccountCapabilities? capabilities;

/// Whether the account can process charges.
final bool? chargesEnabled;

final LegalEntityCompany? company;

final AccountUnificationAccountController? controller;

/// The account's country.
final String? country;

/// Time at which the account was connected. Measured in seconds since the Unix epoch.
final int? created;

/// Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
final String? defaultCurrency;

/// Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](/connect/onboarding) to finish submitting account details.
final bool? detailsSubmitted;

/// An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform.
final String? email;

/// External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true.
final AccountExternalAccounts? externalAccounts;

final AccountFutureRequirements? futureRequirements;

/// The groups associated with the account.
final AccountGroups? groups;

/// Unique identifier for the object.
final String id;

final Person? individual;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// String representing the object's type. Objects of the same type share the same value.
final AccountObject object;

/// Whether the funds in this account can be paid out.
final bool? payoutsEnabled;

final AccountRequirements? requirements;

/// Options for customizing how the account functions within Stripe.
final AccountSettings2? settings;

final AccountTosAcceptance? tosAcceptance;

/// The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
final AccountType? type;

Map<String, dynamic> toJson() { return {
  if (businessProfile != null) 'business_profile': businessProfile?.toJson(),
  if (businessType != null) 'business_type': businessType?.toJson(),
  if (capabilities != null) 'capabilities': capabilities?.toJson(),
  'charges_enabled': ?chargesEnabled,
  if (company != null) 'company': company?.toJson(),
  if (controller != null) 'controller': controller?.toJson(),
  'country': ?country,
  'created': ?created,
  'default_currency': ?defaultCurrency,
  'details_submitted': ?detailsSubmitted,
  'email': ?email,
  if (externalAccounts != null) 'external_accounts': externalAccounts?.toJson(),
  if (futureRequirements != null) 'future_requirements': futureRequirements?.toJson(),
  if (groups != null) 'groups': groups?.toJson(),
  'id': id,
  if (individual != null) 'individual': individual?.toJson(),
  'metadata': ?metadata,
  'object': object.toJson(),
  'payouts_enabled': ?payoutsEnabled,
  if (requirements != null) 'requirements': requirements?.toJson(),
  if (settings != null) 'settings': settings?.toJson(),
  if (tosAcceptance != null) 'tos_acceptance': tosAcceptance?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
Account copyWith({AccountBusinessProfile2? Function()? businessProfile, AccountBusinessType? Function()? businessType, AccountCapabilities Function()? capabilities, bool Function()? chargesEnabled, LegalEntityCompany Function()? company, AccountUnificationAccountController Function()? controller, String Function()? country, int Function()? created, String Function()? defaultCurrency, bool Function()? detailsSubmitted, String? Function()? email, AccountExternalAccounts Function()? externalAccounts, AccountFutureRequirements Function()? futureRequirements, AccountGroups? Function()? groups, String? id, Person Function()? individual, Map<String, String> Function()? metadata, AccountObject? object, bool Function()? payoutsEnabled, AccountRequirements Function()? requirements, AccountSettings2? Function()? settings, AccountTosAcceptance Function()? tosAcceptance, AccountType Function()? type, }) { return Account(
  businessProfile: businessProfile != null ? businessProfile() : this.businessProfile,
  businessType: businessType != null ? businessType() : this.businessType,
  capabilities: capabilities != null ? capabilities() : this.capabilities,
  chargesEnabled: chargesEnabled != null ? chargesEnabled() : this.chargesEnabled,
  company: company != null ? company() : this.company,
  controller: controller != null ? controller() : this.controller,
  country: country != null ? country() : this.country,
  created: created != null ? created() : this.created,
  defaultCurrency: defaultCurrency != null ? defaultCurrency() : this.defaultCurrency,
  detailsSubmitted: detailsSubmitted != null ? detailsSubmitted() : this.detailsSubmitted,
  email: email != null ? email() : this.email,
  externalAccounts: externalAccounts != null ? externalAccounts() : this.externalAccounts,
  futureRequirements: futureRequirements != null ? futureRequirements() : this.futureRequirements,
  groups: groups != null ? groups() : this.groups,
  id: id ?? this.id,
  individual: individual != null ? individual() : this.individual,
  metadata: metadata != null ? metadata() : this.metadata,
  object: object ?? this.object,
  payoutsEnabled: payoutsEnabled != null ? payoutsEnabled() : this.payoutsEnabled,
  requirements: requirements != null ? requirements() : this.requirements,
  settings: settings != null ? settings() : this.settings,
  tosAcceptance: tosAcceptance != null ? tosAcceptance() : this.tosAcceptance,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Account &&
          businessProfile == other.businessProfile &&
          businessType == other.businessType &&
          capabilities == other.capabilities &&
          chargesEnabled == other.chargesEnabled &&
          company == other.company &&
          controller == other.controller &&
          country == other.country &&
          created == other.created &&
          defaultCurrency == other.defaultCurrency &&
          detailsSubmitted == other.detailsSubmitted &&
          email == other.email &&
          externalAccounts == other.externalAccounts &&
          futureRequirements == other.futureRequirements &&
          groups == other.groups &&
          id == other.id &&
          individual == other.individual &&
          metadata == other.metadata &&
          object == other.object &&
          payoutsEnabled == other.payoutsEnabled &&
          requirements == other.requirements &&
          settings == other.settings &&
          tosAcceptance == other.tosAcceptance &&
          type == other.type; } 
@override int get hashCode { return Object.hashAll([businessProfile, businessType, capabilities, chargesEnabled, company, controller, country, created, defaultCurrency, detailsSubmitted, email, externalAccounts, futureRequirements, groups, id, individual, metadata, object, payoutsEnabled, requirements, settings, tosAcceptance, type]); } 
@override String toString() { return 'Account(businessProfile: $businessProfile, businessType: $businessType, capabilities: $capabilities, chargesEnabled: $chargesEnabled, company: $company, controller: $controller, country: $country, created: $created, defaultCurrency: $defaultCurrency, detailsSubmitted: $detailsSubmitted, email: $email, externalAccounts: $externalAccounts, futureRequirements: $futureRequirements, groups: $groups, id: $id, individual: $individual, metadata: $metadata, object: $object, payoutsEnabled: $payoutsEnabled, requirements: $requirements, settings: $settings, tosAcceptance: $tosAcceptance, type: $type)'; } 
 }
