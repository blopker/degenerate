// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_identity_verification_sessions_request_options.dart';import 'post_identity_verification_sessions_request_provided_details.dart';import 'post_identity_verification_sessions_request_related_person.dart';/// The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`.
@immutable final class PostIdentityVerificationSessionsRequestType {const PostIdentityVerificationSessionsRequestType._(this.value);

factory PostIdentityVerificationSessionsRequestType.fromJson(String json) { return switch (json) {
  'document' => document,
  'id_number' => idNumber,
  _ => PostIdentityVerificationSessionsRequestType._(json),
}; }

static const PostIdentityVerificationSessionsRequestType document = PostIdentityVerificationSessionsRequestType._('document');

static const PostIdentityVerificationSessionsRequestType idNumber = PostIdentityVerificationSessionsRequestType._('id_number');

static const List<PostIdentityVerificationSessionsRequestType> values = [document, idNumber];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIdentityVerificationSessionsRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIdentityVerificationSessionsRequestType($value)'; } 
 }
@immutable final class PostIdentityVerificationSessionsRequest {const PostIdentityVerificationSessionsRequest({this.clientReferenceId, this.expand, this.metadata, this.options, this.providedDetails, this.relatedCustomer, this.relatedCustomerAccount, this.relatedPerson, this.returnUrl, this.type, this.verificationFlow, });

factory PostIdentityVerificationSessionsRequest.fromJson(Map<String, dynamic> json) { return PostIdentityVerificationSessionsRequest(
  clientReferenceId: json['client_reference_id'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  options: json['options'] != null ? PostIdentityVerificationSessionsRequestOptions.fromJson(json['options'] as Map<String, dynamic>) : null,
  providedDetails: json['provided_details'] != null ? PostIdentityVerificationSessionsRequestProvidedDetails.fromJson(json['provided_details'] as Map<String, dynamic>) : null,
  relatedCustomer: json['related_customer'] as String?,
  relatedCustomerAccount: json['related_customer_account'] as String?,
  relatedPerson: json['related_person'] != null ? PostIdentityVerificationSessionsRequestRelatedPerson.fromJson(json['related_person'] as Map<String, dynamic>) : null,
  returnUrl: json['return_url'] as String?,
  type: json['type'] != null ? PostIdentityVerificationSessionsRequestType.fromJson(json['type'] as String) : null,
  verificationFlow: json['verification_flow'] as String?,
); }

/// A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
final String? clientReferenceId;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// A set of options for the session’s verification checks.
final PostIdentityVerificationSessionsRequestOptions? options;

/// Details provided about the user being verified. These details may be shown to the user.
final PostIdentityVerificationSessionsRequestProvidedDetails? providedDetails;

/// Customer ID
final String? relatedCustomer;

/// The ID of the Account representing a customer.
final String? relatedCustomerAccount;

/// Tokens referencing a Person resource and it's associated account.
final PostIdentityVerificationSessionsRequestRelatedPerson? relatedPerson;

/// The URL that the user will be redirected to upon completing the verification flow.
final String? returnUrl;

/// The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`.
final PostIdentityVerificationSessionsRequestType? type;

/// The ID of a verification flow from the Dashboard. See https://docs.stripe.com/identity/verification-flows.
final String? verificationFlow;

Map<String, dynamic> toJson() { return {
  'client_reference_id': ?clientReferenceId,
  'expand': ?expand,
  'metadata': ?metadata,
  if (options != null) 'options': options?.toJson(),
  if (providedDetails != null) 'provided_details': providedDetails?.toJson(),
  'related_customer': ?relatedCustomer,
  'related_customer_account': ?relatedCustomerAccount,
  if (relatedPerson != null) 'related_person': relatedPerson?.toJson(),
  'return_url': ?returnUrl,
  if (type != null) 'type': type?.toJson(),
  'verification_flow': ?verificationFlow,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_reference_id', 'expand', 'metadata', 'options', 'provided_details', 'related_customer', 'related_customer_account', 'related_person', 'return_url', 'type', 'verification_flow'}.contains(key)); } 
PostIdentityVerificationSessionsRequest copyWith({String Function()? clientReferenceId, List<String> Function()? expand, Map<String, String> Function()? metadata, PostIdentityVerificationSessionsRequestOptions Function()? options, PostIdentityVerificationSessionsRequestProvidedDetails Function()? providedDetails, String Function()? relatedCustomer, String Function()? relatedCustomerAccount, PostIdentityVerificationSessionsRequestRelatedPerson Function()? relatedPerson, String Function()? returnUrl, PostIdentityVerificationSessionsRequestType Function()? type, String Function()? verificationFlow, }) { return PostIdentityVerificationSessionsRequest(
  clientReferenceId: clientReferenceId != null ? clientReferenceId() : this.clientReferenceId,
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  options: options != null ? options() : this.options,
  providedDetails: providedDetails != null ? providedDetails() : this.providedDetails,
  relatedCustomer: relatedCustomer != null ? relatedCustomer() : this.relatedCustomer,
  relatedCustomerAccount: relatedCustomerAccount != null ? relatedCustomerAccount() : this.relatedCustomerAccount,
  relatedPerson: relatedPerson != null ? relatedPerson() : this.relatedPerson,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
  type: type != null ? type() : this.type,
  verificationFlow: verificationFlow != null ? verificationFlow() : this.verificationFlow,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIdentityVerificationSessionsRequest &&
          clientReferenceId == other.clientReferenceId &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          options == other.options &&
          providedDetails == other.providedDetails &&
          relatedCustomer == other.relatedCustomer &&
          relatedCustomerAccount == other.relatedCustomerAccount &&
          relatedPerson == other.relatedPerson &&
          returnUrl == other.returnUrl &&
          type == other.type &&
          verificationFlow == other.verificationFlow; } 
@override int get hashCode { return Object.hash(clientReferenceId, Object.hashAll(expand ?? const []), metadata, options, providedDetails, relatedCustomer, relatedCustomerAccount, relatedPerson, returnUrl, type, verificationFlow); } 
@override String toString() { return 'PostIdentityVerificationSessionsRequest(clientReferenceId: $clientReferenceId, expand: $expand, metadata: $metadata, options: $options, providedDetails: $providedDetails, relatedCustomer: $relatedCustomer, relatedCustomerAccount: $relatedCustomerAccount, relatedPerson: $relatedPerson, returnUrl: $returnUrl, type: $type, verificationFlow: $verificationFlow)'; } 
 }
