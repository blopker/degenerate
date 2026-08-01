// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_annual_revenue.dart';import 'account_monthly_estimated_revenue.dart';import 'address.dart';@immutable final class AccountBusinessProfileMinorityOwnedBusinessDesignation {const AccountBusinessProfileMinorityOwnedBusinessDesignation._(this.value);

factory AccountBusinessProfileMinorityOwnedBusinessDesignation.fromJson(String json) { return switch (json) {
  'lgbtqi_owned_business' => lgbtqiOwnedBusiness,
  'minority_owned_business' => minorityOwnedBusiness,
  'none_of_these_apply' => noneOfTheseApply,
  'prefer_not_to_answer' => preferNotToAnswer,
  'women_owned_business' => womenOwnedBusiness,
  _ => AccountBusinessProfileMinorityOwnedBusinessDesignation._(json),
}; }

static const AccountBusinessProfileMinorityOwnedBusinessDesignation lgbtqiOwnedBusiness = AccountBusinessProfileMinorityOwnedBusinessDesignation._('lgbtqi_owned_business');

static const AccountBusinessProfileMinorityOwnedBusinessDesignation minorityOwnedBusiness = AccountBusinessProfileMinorityOwnedBusinessDesignation._('minority_owned_business');

static const AccountBusinessProfileMinorityOwnedBusinessDesignation noneOfTheseApply = AccountBusinessProfileMinorityOwnedBusinessDesignation._('none_of_these_apply');

static const AccountBusinessProfileMinorityOwnedBusinessDesignation preferNotToAnswer = AccountBusinessProfileMinorityOwnedBusinessDesignation._('prefer_not_to_answer');

static const AccountBusinessProfileMinorityOwnedBusinessDesignation womenOwnedBusiness = AccountBusinessProfileMinorityOwnedBusinessDesignation._('women_owned_business');

static const List<AccountBusinessProfileMinorityOwnedBusinessDesignation> values = [lgbtqiOwnedBusiness, minorityOwnedBusiness, noneOfTheseApply, preferNotToAnswer, womenOwnedBusiness];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountBusinessProfileMinorityOwnedBusinessDesignation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountBusinessProfileMinorityOwnedBusinessDesignation($value)'; } 
 }
/// 
@immutable final class AccountBusinessProfile {const AccountBusinessProfile({this.annualRevenue = const Omittable.absent(), this.estimatedWorkerCount = const Omittable.absent(), this.mcc = const Omittable.absent(), this.minorityOwnedBusinessDesignation = const Omittable.absent(), this.monthlyEstimatedRevenue, this.name = const Omittable.absent(), this.productDescription = const Omittable.absent(), this.supportAddress = const Omittable.absent(), this.supportEmail = const Omittable.absent(), this.supportPhone = const Omittable.absent(), this.supportUrl = const Omittable.absent(), this.url = const Omittable.absent(), });

factory AccountBusinessProfile.fromJson(Map<String, dynamic> json) { return AccountBusinessProfile(
  annualRevenue: json.containsKey('annual_revenue') ? Omittable(json['annual_revenue'] != null ? AccountAnnualRevenue.fromJson(json['annual_revenue'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  estimatedWorkerCount: json.containsKey('estimated_worker_count') ? Omittable(json['estimated_worker_count'] != null ? (json['estimated_worker_count'] as num).toInt() : null) : const Omittable.absent(),
  mcc: json.containsKey('mcc') ? Omittable(json['mcc'] as String?) : const Omittable.absent(),
  minorityOwnedBusinessDesignation: json.containsKey('minority_owned_business_designation') ? Omittable((json['minority_owned_business_designation'] as List<dynamic>?)?.map((e) => AccountBusinessProfileMinorityOwnedBusinessDesignation.fromJson(e as String)).toList()) : const Omittable.absent(),
  monthlyEstimatedRevenue: json['monthly_estimated_revenue'] != null ? AccountMonthlyEstimatedRevenue.fromJson(json['monthly_estimated_revenue'] as Map<String, dynamic>) : null,
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  productDescription: json.containsKey('product_description') ? Omittable(json['product_description'] as String?) : const Omittable.absent(),
  supportAddress: json.containsKey('support_address') ? Omittable(json['support_address'] != null ? Address.fromJson(json['support_address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  supportEmail: json.containsKey('support_email') ? Omittable(json['support_email'] as String?) : const Omittable.absent(),
  supportPhone: json.containsKey('support_phone') ? Omittable(json['support_phone'] as String?) : const Omittable.absent(),
  supportUrl: json.containsKey('support_url') ? Omittable(json['support_url'] as String?) : const Omittable.absent(),
  url: json.containsKey('url') ? Omittable(json['url'] as String?) : const Omittable.absent(),
); }

/// The applicant's gross annual revenue for its preceding fiscal year.
final Omittable<AccountAnnualRevenue?> annualRevenue;

/// An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
final Omittable<int?> estimatedWorkerCount;

/// [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
final Omittable<String?> mcc;

/// Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
final Omittable<List<AccountBusinessProfileMinorityOwnedBusinessDesignation>?> minorityOwnedBusinessDesignation;

final AccountMonthlyEstimatedRevenue? monthlyEstimatedRevenue;

/// The customer-facing business name.
final Omittable<String?> name;

/// Internal-only description of the product sold or service provided by the business. It's used by Stripe for risk and underwriting purposes.
final Omittable<String?> productDescription;

/// A publicly available mailing address for sending support issues to.
final Omittable<Address?> supportAddress;

/// A publicly available email address for sending support issues to.
final Omittable<String?> supportEmail;

/// A publicly available phone number to call with support issues.
final Omittable<String?> supportPhone;

/// A publicly available website for handling support issues.
final Omittable<String?> supportUrl;

/// The business's publicly available website.
final Omittable<String?> url;

Map<String, dynamic> toJson() { return {
  if (annualRevenue.isPresent) 'annual_revenue': annualRevenue.value?.toJson(),
  if (estimatedWorkerCount.isPresent) 'estimated_worker_count': estimatedWorkerCount.value,
  if (mcc.isPresent) 'mcc': mcc.value,
  if (minorityOwnedBusinessDesignation.isPresent) 'minority_owned_business_designation': minorityOwnedBusinessDesignation.value?.map((e) => e.toJson()).toList(),
  if (monthlyEstimatedRevenue != null) 'monthly_estimated_revenue': monthlyEstimatedRevenue?.toJson(),
  if (name.isPresent) 'name': name.value,
  if (productDescription.isPresent) 'product_description': productDescription.value,
  if (supportAddress.isPresent) 'support_address': supportAddress.value?.toJson(),
  if (supportEmail.isPresent) 'support_email': supportEmail.value,
  if (supportPhone.isPresent) 'support_phone': supportPhone.value,
  if (supportUrl.isPresent) 'support_url': supportUrl.value,
  if (url.isPresent) 'url': url.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'annual_revenue', 'estimated_worker_count', 'mcc', 'minority_owned_business_designation', 'monthly_estimated_revenue', 'name', 'product_description', 'support_address', 'support_email', 'support_phone', 'support_url', 'url'}.contains(key)); } 
AccountBusinessProfile copyWith({Omittable<AccountAnnualRevenue?>? annualRevenue, Omittable<int?>? estimatedWorkerCount, Omittable<String?>? mcc, Omittable<List<AccountBusinessProfileMinorityOwnedBusinessDesignation>?>? minorityOwnedBusinessDesignation, AccountMonthlyEstimatedRevenue? Function()? monthlyEstimatedRevenue, Omittable<String?>? name, Omittable<String?>? productDescription, Omittable<Address?>? supportAddress, Omittable<String?>? supportEmail, Omittable<String?>? supportPhone, Omittable<String?>? supportUrl, Omittable<String?>? url, }) { return AccountBusinessProfile(
  annualRevenue: annualRevenue ?? this.annualRevenue,
  estimatedWorkerCount: estimatedWorkerCount ?? this.estimatedWorkerCount,
  mcc: mcc ?? this.mcc,
  minorityOwnedBusinessDesignation: minorityOwnedBusinessDesignation ?? this.minorityOwnedBusinessDesignation,
  monthlyEstimatedRevenue: monthlyEstimatedRevenue != null ? monthlyEstimatedRevenue() : this.monthlyEstimatedRevenue,
  name: name ?? this.name,
  productDescription: productDescription ?? this.productDescription,
  supportAddress: supportAddress ?? this.supportAddress,
  supportEmail: supportEmail ?? this.supportEmail,
  supportPhone: supportPhone ?? this.supportPhone,
  supportUrl: supportUrl ?? this.supportUrl,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountBusinessProfile &&
          annualRevenue == other.annualRevenue &&
          estimatedWorkerCount == other.estimatedWorkerCount &&
          mcc == other.mcc &&
          minorityOwnedBusinessDesignation.isPresent == other.minorityOwnedBusinessDesignation.isPresent &&
          listEquals(minorityOwnedBusinessDesignation.value, other.minorityOwnedBusinessDesignation.value) &&
          monthlyEstimatedRevenue == other.monthlyEstimatedRevenue &&
          name == other.name &&
          productDescription == other.productDescription &&
          supportAddress == other.supportAddress &&
          supportEmail == other.supportEmail &&
          supportPhone == other.supportPhone &&
          supportUrl == other.supportUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(annualRevenue, estimatedWorkerCount, mcc, Object.hashAll(minorityOwnedBusinessDesignation.value ?? const []), monthlyEstimatedRevenue, name, productDescription, supportAddress, supportEmail, supportPhone, supportUrl, url); } 
@override String toString() { return 'AccountBusinessProfile(annualRevenue: $annualRevenue, estimatedWorkerCount: $estimatedWorkerCount, mcc: $mcc, minorityOwnedBusinessDesignation: $minorityOwnedBusinessDesignation, monthlyEstimatedRevenue: $monthlyEstimatedRevenue, name: $name, productDescription: $productDescription, supportAddress: $supportAddress, supportEmail: $supportEmail, supportPhone: $supportPhone, supportUrl: $supportUrl, url: $url)'; } 
 }
