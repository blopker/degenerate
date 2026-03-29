// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_access_group_rule.dart';import 'access_any_valid_service_token_rule.dart';import 'access_auth_context_rule.dart';import 'access_authentication_method_rule.dart';import 'access_azure_group_rule.dart';import 'access_certificate_rule.dart';import 'access_common_name_rule.dart';import 'access_country_rule.dart';import 'access_device_posture_rule.dart';import 'access_domain_rule.dart';import 'access_email_list_rule.dart';import 'access_email_rule.dart';import 'access_everyone_rule.dart';import 'access_external_evaluation_rule.dart';import 'access_github_organization_rule.dart';import 'access_gsuite_group_rule.dart';import 'access_ip_list_rule.dart';import 'access_ip_rule.dart';import 'access_linked_app_token_rule.dart';import 'access_login_method_rule.dart';import 'access_oidc_claim_rule.dart';import 'access_okta_group_rule.dart';import 'access_saml_group_rule.dart';import 'access_service_token_rule.dart';import 'access_user_risk_score_rule.dart';/// A value that is one of: `AccessAccessGroupRule`, `AccessAnyValidServiceTokenRule`, `AccessAuthContextRule`, `AccessAuthenticationMethodRule`, `AccessAzureGroupRule`, `AccessCertificateRule`, `AccessCommonNameRule`, `AccessCountryRule`, `AccessDevicePostureRule`, `AccessDomainRule`, `AccessEmailListRule`, `AccessEmailRule`, `AccessEveryoneRule`, `AccessExternalEvaluationRule`, `AccessGithubOrganizationRule`, `AccessGsuiteGroupRule`, `AccessLoginMethodRule`, `AccessIpListRule`, `AccessIpRule`, `AccessOktaGroupRule`, `AccessSamlGroupRule`, `AccessOidcClaimRule`, `AccessServiceTokenRule`, `AccessLinkedAppTokenRule`, `AccessUserRiskScoreRule`.
sealed class AccessRule {const AccessRule();

factory AccessRule.fromJson(Map<String, dynamic> json) {   if (AccessAccessGroupRule.canParse(json)) {
    return AccessRuleAccessAccessGroupRule(AccessAccessGroupRule.fromJson(json));
  }
  if (AccessAnyValidServiceTokenRule.canParse(json)) {
    return AccessRuleAccessAnyValidServiceTokenRule(AccessAnyValidServiceTokenRule.fromJson(json));
  }
  if (AccessAuthContextRule.canParse(json)) {
    return AccessRuleAccessAuthContextRule(AccessAuthContextRule.fromJson(json));
  }
  if (AccessAuthenticationMethodRule.canParse(json)) {
    return AccessRuleAccessAuthenticationMethodRule(AccessAuthenticationMethodRule.fromJson(json));
  }
  if (AccessAzureGroupRule.canParse(json)) {
    return AccessRuleAccessAzureGroupRule(AccessAzureGroupRule.fromJson(json));
  }
  if (AccessCertificateRule.canParse(json)) {
    return AccessRuleAccessCertificateRule(AccessCertificateRule.fromJson(json));
  }
  if (AccessCommonNameRule.canParse(json)) {
    return AccessRuleAccessCommonNameRule(AccessCommonNameRule.fromJson(json));
  }
  if (AccessCountryRule.canParse(json)) {
    return AccessRuleAccessCountryRule(AccessCountryRule.fromJson(json));
  }
  if (AccessDevicePostureRule.canParse(json)) {
    return AccessRuleAccessDevicePostureRule(AccessDevicePostureRule.fromJson(json));
  }
  if (AccessDomainRule.canParse(json)) {
    return AccessRuleAccessDomainRule(AccessDomainRule.fromJson(json));
  }
  if (AccessEmailListRule.canParse(json)) {
    return AccessRuleAccessEmailListRule(AccessEmailListRule.fromJson(json));
  }
  if (AccessEmailRule.canParse(json)) {
    return AccessRuleAccessEmailRule(AccessEmailRule.fromJson(json));
  }
  if (AccessEveryoneRule.canParse(json)) {
    return AccessRuleAccessEveryoneRule(AccessEveryoneRule.fromJson(json));
  }
  if (AccessExternalEvaluationRule.canParse(json)) {
    return AccessRuleAccessExternalEvaluationRule(AccessExternalEvaluationRule.fromJson(json));
  }
  if (AccessGithubOrganizationRule.canParse(json)) {
    return AccessRuleAccessGithubOrganizationRule(AccessGithubOrganizationRule.fromJson(json));
  }
  if (AccessGsuiteGroupRule.canParse(json)) {
    return AccessRuleAccessGsuiteGroupRule(AccessGsuiteGroupRule.fromJson(json));
  }
  if (AccessLoginMethodRule.canParse(json)) {
    return AccessRuleAccessLoginMethodRule(AccessLoginMethodRule.fromJson(json));
  }
  if (AccessIpListRule.canParse(json)) {
    return AccessRuleAccessIpListRule(AccessIpListRule.fromJson(json));
  }
  if (AccessIpRule.canParse(json)) {
    return AccessRuleAccessIpRule(AccessIpRule.fromJson(json));
  }
  if (AccessOktaGroupRule.canParse(json)) {
    return AccessRuleAccessOktaGroupRule(AccessOktaGroupRule.fromJson(json));
  }
  if (AccessSamlGroupRule.canParse(json)) {
    return AccessRuleAccessSamlGroupRule(AccessSamlGroupRule.fromJson(json));
  }
  if (AccessOidcClaimRule.canParse(json)) {
    return AccessRuleAccessOidcClaimRule(AccessOidcClaimRule.fromJson(json));
  }
  if (AccessServiceTokenRule.canParse(json)) {
    return AccessRuleAccessServiceTokenRule(AccessServiceTokenRule.fromJson(json));
  }
  if (AccessLinkedAppTokenRule.canParse(json)) {
    return AccessRuleAccessLinkedAppTokenRule(AccessLinkedAppTokenRule.fromJson(json));
  }
  if (AccessUserRiskScoreRule.canParse(json)) {
    return AccessRuleAccessUserRiskScoreRule(AccessUserRiskScoreRule.fromJson(json));
  }
  return AccessRule$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class AccessRuleAccessAccessGroupRule extends AccessRule {const AccessRuleAccessAccessGroupRule(this._value);

final AccessAccessGroupRule _value;

@override AccessAccessGroupRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessAccessGroupRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessAccessGroupRule($_value)'; } 
 }
final class AccessRuleAccessAnyValidServiceTokenRule extends AccessRule {const AccessRuleAccessAnyValidServiceTokenRule(this._value);

final AccessAnyValidServiceTokenRule _value;

@override AccessAnyValidServiceTokenRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessAnyValidServiceTokenRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessAnyValidServiceTokenRule($_value)'; } 
 }
final class AccessRuleAccessAuthContextRule extends AccessRule {const AccessRuleAccessAuthContextRule(this._value);

final AccessAuthContextRule _value;

@override AccessAuthContextRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessAuthContextRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessAuthContextRule($_value)'; } 
 }
final class AccessRuleAccessAuthenticationMethodRule extends AccessRule {const AccessRuleAccessAuthenticationMethodRule(this._value);

final AccessAuthenticationMethodRule _value;

@override AccessAuthenticationMethodRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessAuthenticationMethodRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessAuthenticationMethodRule($_value)'; } 
 }
final class AccessRuleAccessAzureGroupRule extends AccessRule {const AccessRuleAccessAzureGroupRule(this._value);

final AccessAzureGroupRule _value;

@override AccessAzureGroupRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessAzureGroupRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessAzureGroupRule($_value)'; } 
 }
final class AccessRuleAccessCertificateRule extends AccessRule {const AccessRuleAccessCertificateRule(this._value);

final AccessCertificateRule _value;

@override AccessCertificateRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessCertificateRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessCertificateRule($_value)'; } 
 }
final class AccessRuleAccessCommonNameRule extends AccessRule {const AccessRuleAccessCommonNameRule(this._value);

final AccessCommonNameRule _value;

@override AccessCommonNameRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessCommonNameRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessCommonNameRule($_value)'; } 
 }
final class AccessRuleAccessCountryRule extends AccessRule {const AccessRuleAccessCountryRule(this._value);

final AccessCountryRule _value;

@override AccessCountryRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessCountryRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessCountryRule($_value)'; } 
 }
final class AccessRuleAccessDevicePostureRule extends AccessRule {const AccessRuleAccessDevicePostureRule(this._value);

final AccessDevicePostureRule _value;

@override AccessDevicePostureRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessDevicePostureRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessDevicePostureRule($_value)'; } 
 }
final class AccessRuleAccessDomainRule extends AccessRule {const AccessRuleAccessDomainRule(this._value);

final AccessDomainRule _value;

@override AccessDomainRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessDomainRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessDomainRule($_value)'; } 
 }
final class AccessRuleAccessEmailListRule extends AccessRule {const AccessRuleAccessEmailListRule(this._value);

final AccessEmailListRule _value;

@override AccessEmailListRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessEmailListRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessEmailListRule($_value)'; } 
 }
final class AccessRuleAccessEmailRule extends AccessRule {const AccessRuleAccessEmailRule(this._value);

final AccessEmailRule _value;

@override AccessEmailRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessEmailRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessEmailRule($_value)'; } 
 }
final class AccessRuleAccessEveryoneRule extends AccessRule {const AccessRuleAccessEveryoneRule(this._value);

final AccessEveryoneRule _value;

@override AccessEveryoneRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessEveryoneRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessEveryoneRule($_value)'; } 
 }
final class AccessRuleAccessExternalEvaluationRule extends AccessRule {const AccessRuleAccessExternalEvaluationRule(this._value);

final AccessExternalEvaluationRule _value;

@override AccessExternalEvaluationRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessExternalEvaluationRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessExternalEvaluationRule($_value)'; } 
 }
final class AccessRuleAccessGithubOrganizationRule extends AccessRule {const AccessRuleAccessGithubOrganizationRule(this._value);

final AccessGithubOrganizationRule _value;

@override AccessGithubOrganizationRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessGithubOrganizationRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessGithubOrganizationRule($_value)'; } 
 }
final class AccessRuleAccessGsuiteGroupRule extends AccessRule {const AccessRuleAccessGsuiteGroupRule(this._value);

final AccessGsuiteGroupRule _value;

@override AccessGsuiteGroupRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessGsuiteGroupRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessGsuiteGroupRule($_value)'; } 
 }
final class AccessRuleAccessLoginMethodRule extends AccessRule {const AccessRuleAccessLoginMethodRule(this._value);

final AccessLoginMethodRule _value;

@override AccessLoginMethodRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessLoginMethodRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessLoginMethodRule($_value)'; } 
 }
final class AccessRuleAccessIpListRule extends AccessRule {const AccessRuleAccessIpListRule(this._value);

final AccessIpListRule _value;

@override AccessIpListRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessIpListRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessIpListRule($_value)'; } 
 }
final class AccessRuleAccessIpRule extends AccessRule {const AccessRuleAccessIpRule(this._value);

final AccessIpRule _value;

@override AccessIpRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessIpRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessIpRule($_value)'; } 
 }
final class AccessRuleAccessOktaGroupRule extends AccessRule {const AccessRuleAccessOktaGroupRule(this._value);

final AccessOktaGroupRule _value;

@override AccessOktaGroupRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessOktaGroupRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessOktaGroupRule($_value)'; } 
 }
final class AccessRuleAccessSamlGroupRule extends AccessRule {const AccessRuleAccessSamlGroupRule(this._value);

final AccessSamlGroupRule _value;

@override AccessSamlGroupRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessSamlGroupRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessSamlGroupRule($_value)'; } 
 }
final class AccessRuleAccessOidcClaimRule extends AccessRule {const AccessRuleAccessOidcClaimRule(this._value);

final AccessOidcClaimRule _value;

@override AccessOidcClaimRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessOidcClaimRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessOidcClaimRule($_value)'; } 
 }
final class AccessRuleAccessServiceTokenRule extends AccessRule {const AccessRuleAccessServiceTokenRule(this._value);

final AccessServiceTokenRule _value;

@override AccessServiceTokenRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessServiceTokenRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessServiceTokenRule($_value)'; } 
 }
final class AccessRuleAccessLinkedAppTokenRule extends AccessRule {const AccessRuleAccessLinkedAppTokenRule(this._value);

final AccessLinkedAppTokenRule _value;

@override AccessLinkedAppTokenRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessLinkedAppTokenRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessLinkedAppTokenRule($_value)'; } 
 }
final class AccessRuleAccessUserRiskScoreRule extends AccessRule {const AccessRuleAccessUserRiskScoreRule(this._value);

final AccessUserRiskScoreRule _value;

@override AccessUserRiskScoreRule get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRuleAccessUserRiskScoreRule && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.accessUserRiskScoreRule($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class AccessRule$Unknown extends AccessRule {const AccessRule$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessRule$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AccessRule.unknown($_value)'; } 
 }
