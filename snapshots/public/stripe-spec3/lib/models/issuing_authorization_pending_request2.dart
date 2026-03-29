// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_authorization_pending_request.dart';/// The pending authorization request. This field will only be non-null during an `issuing_authorization.request` webhook.
final class IssuingAuthorizationPendingRequest2 {const IssuingAuthorizationPendingRequest2({this.issuingAuthorizationPendingRequest});

factory IssuingAuthorizationPendingRequest2.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationPendingRequest2(
  issuingAuthorizationPendingRequest: IssuingAuthorizationPendingRequest.canParse(json) ? IssuingAuthorizationPendingRequest.fromJson(json) : null,
); }

final IssuingAuthorizationPendingRequest? issuingAuthorizationPendingRequest;

/// At least one variant must be present.
bool get isValid { return issuingAuthorizationPendingRequest != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingAuthorizationPendingRequest?.toJson(),
}; } 
 }
