// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_cardholders_cardholder_request_billing.dart';import 'post_issuing_cardholders_cardholder_request_company.dart';import 'post_issuing_cardholders_cardholder_request_individual.dart';import 'post_issuing_cardholders_cardholder_request_spending_controls.dart';final class PostIssuingCardholdersCardholderRequestPreferredLocales {const PostIssuingCardholdersCardholderRequestPreferredLocales._(this.value);

factory PostIssuingCardholdersCardholderRequestPreferredLocales.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'es' => es,
  'fr' => fr,
  'it' => it,
  _ => PostIssuingCardholdersCardholderRequestPreferredLocales._(json),
}; }

static const PostIssuingCardholdersCardholderRequestPreferredLocales de = PostIssuingCardholdersCardholderRequestPreferredLocales._('de');

static const PostIssuingCardholdersCardholderRequestPreferredLocales en = PostIssuingCardholdersCardholderRequestPreferredLocales._('en');

static const PostIssuingCardholdersCardholderRequestPreferredLocales es = PostIssuingCardholdersCardholderRequestPreferredLocales._('es');

static const PostIssuingCardholdersCardholderRequestPreferredLocales fr = PostIssuingCardholdersCardholderRequestPreferredLocales._('fr');

static const PostIssuingCardholdersCardholderRequestPreferredLocales it = PostIssuingCardholdersCardholderRequestPreferredLocales._('it');

static const List<PostIssuingCardholdersCardholderRequestPreferredLocales> values = [de, en, es, fr, it];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardholdersCardholderRequestPreferredLocales && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestPreferredLocales($value)'; } 
 }
/// Specifies whether to permit authorizations on this cardholder's cards.
final class PostIssuingCardholdersCardholderRequestStatus {const PostIssuingCardholdersCardholderRequestStatus._(this.value);

factory PostIssuingCardholdersCardholderRequestStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'inactive' => inactive,
  _ => PostIssuingCardholdersCardholderRequestStatus._(json),
}; }

static const PostIssuingCardholdersCardholderRequestStatus active = PostIssuingCardholdersCardholderRequestStatus._('active');

static const PostIssuingCardholdersCardholderRequestStatus inactive = PostIssuingCardholdersCardholderRequestStatus._('inactive');

static const List<PostIssuingCardholdersCardholderRequestStatus> values = [active, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardholdersCardholderRequestStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestStatus($value)'; } 
 }
final class PostIssuingCardholdersCardholderRequest {const PostIssuingCardholdersCardholderRequest({this.billing, this.company, this.email, this.expand, this.individual, this.metadata, this.phoneNumber, this.preferredLocales, this.spendingControls, this.status, });

factory PostIssuingCardholdersCardholderRequest.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersCardholderRequest(
  billing: json['billing'] != null ? PostIssuingCardholdersCardholderRequestBilling.fromJson(json['billing'] as Map<String, dynamic>) : null,
  company: json['company'] != null ? PostIssuingCardholdersCardholderRequestCompany.fromJson(json['company'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  individual: json['individual'] != null ? PostIssuingCardholdersCardholderRequestIndividual.fromJson(json['individual'] as Map<String, dynamic>) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  phoneNumber: json['phone_number'] as String?,
  preferredLocales: (json['preferred_locales'] as List<dynamic>?)?.map((e) => PostIssuingCardholdersCardholderRequestPreferredLocales.fromJson(e as String)).toList(),
  spendingControls: json['spending_controls'] != null ? PostIssuingCardholdersCardholderRequestSpendingControls.fromJson(json['spending_controls'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? PostIssuingCardholdersCardholderRequestStatus.fromJson(json['status'] as String) : null,
); }

/// The cardholder's billing address.
final PostIssuingCardholdersCardholderRequestBilling? billing;

/// Additional information about a `company` cardholder.
final PostIssuingCardholdersCardholderRequestCompany? company;

/// The cardholder's email address.
final String? email;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Additional information about an `individual` cardholder.
final PostIssuingCardholdersCardholderRequestIndividual? individual;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://docs.stripe.com/issuing/3d-secure) for more details.
final String? phoneNumber;

/// The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
///  This changes the language of the [3D Secure flow](https://docs.stripe.com/issuing/3d-secure) and one-time password messages sent to the cardholder.
final List<PostIssuingCardholdersCardholderRequestPreferredLocales>? preferredLocales;

/// Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
final PostIssuingCardholdersCardholderRequestSpendingControls? spendingControls;

/// Specifies whether to permit authorizations on this cardholder's cards.
final PostIssuingCardholdersCardholderRequestStatus? status;

Map<String, dynamic> toJson() { return {
  if (billing != null) 'billing': billing?.toJson(),
  if (company != null) 'company': company?.toJson(),
  'email': ?email,
  'expand': ?expand,
  if (individual != null) 'individual': individual?.toJson(),
  'metadata': ?metadata,
  'phone_number': ?phoneNumber,
  if (preferredLocales != null) 'preferred_locales': preferredLocales?.map((e) => e.toJson()).toList(),
  if (spendingControls != null) 'spending_controls': spendingControls?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostIssuingCardholdersCardholderRequest copyWith({PostIssuingCardholdersCardholderRequestBilling Function()? billing, PostIssuingCardholdersCardholderRequestCompany Function()? company, String Function()? email, List<String> Function()? expand, PostIssuingCardholdersCardholderRequestIndividual Function()? individual, Map<String, String> Function()? metadata, String Function()? phoneNumber, List<PostIssuingCardholdersCardholderRequestPreferredLocales> Function()? preferredLocales, PostIssuingCardholdersCardholderRequestSpendingControls Function()? spendingControls, PostIssuingCardholdersCardholderRequestStatus Function()? status, }) { return PostIssuingCardholdersCardholderRequest(
  billing: billing != null ? billing() : this.billing,
  company: company != null ? company() : this.company,
  email: email != null ? email() : this.email,
  expand: expand != null ? expand() : this.expand,
  individual: individual != null ? individual() : this.individual,
  metadata: metadata != null ? metadata() : this.metadata,
  phoneNumber: phoneNumber != null ? phoneNumber() : this.phoneNumber,
  preferredLocales: preferredLocales != null ? preferredLocales() : this.preferredLocales,
  spendingControls: spendingControls != null ? spendingControls() : this.spendingControls,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersCardholderRequest &&
          billing == other.billing &&
          company == other.company &&
          email == other.email &&
          listEquals(expand, other.expand) &&
          individual == other.individual &&
          metadata == other.metadata &&
          phoneNumber == other.phoneNumber &&
          listEquals(preferredLocales, other.preferredLocales) &&
          spendingControls == other.spendingControls &&
          status == other.status; } 
@override int get hashCode { return Object.hash(billing, company, email, Object.hashAll(expand ?? const []), individual, metadata, phoneNumber, Object.hashAll(preferredLocales ?? const []), spendingControls, status); } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequest(billing: $billing, company: $company, email: $email, expand: $expand, individual: $individual, metadata: $metadata, phoneNumber: $phoneNumber, preferredLocales: $preferredLocales, spendingControls: $spendingControls, status: $status)'; } 
 }
