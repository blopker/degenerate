// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_expires_on.dart';import 'iam_not_before.dart';import 'iam_token_identifier.dart';import 'iam_token_status.dart';final class IamTokenVerifyResponseSingleSegmentResult {const IamTokenVerifyResponseSingleSegmentResult({this.expiresOn, required this.id, this.notBefore, required this.status, });

factory IamTokenVerifyResponseSingleSegmentResult.fromJson(Map<String, dynamic> json) { return IamTokenVerifyResponseSingleSegmentResult(
  expiresOn: json['expires_on'] != null ? IamExpiresOn.fromJson(json['expires_on'] as String) : null,
  id: IamTokenIdentifier.fromJson(json['id'] as String),
  notBefore: json['not_before'] != null ? IamNotBefore.fromJson(json['not_before'] as String) : null,
  status: IamTokenStatus.fromJson(json['status'] as String),
); }

/// The expiration time on or after which the JWT MUST NOT be accepted for processing.
final IamExpiresOn? expiresOn;

/// Token identifier tag.
final IamTokenIdentifier id;

/// The time before which the token MUST NOT be accepted for processing.
final IamNotBefore? notBefore;

/// Status of the token.
final IamTokenStatus status;

Map<String, dynamic> toJson() { return {
  if (expiresOn != null) 'expires_on': expiresOn?.toJson(),
  'id': id.toJson(),
  if (notBefore != null) 'not_before': notBefore?.toJson(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('status'); } 
IamTokenVerifyResponseSingleSegmentResult copyWith({IamExpiresOn Function()? expiresOn, IamTokenIdentifier? id, IamNotBefore Function()? notBefore, IamTokenStatus? status, }) { return IamTokenVerifyResponseSingleSegmentResult(
  expiresOn: expiresOn != null ? expiresOn() : this.expiresOn,
  id: id ?? this.id,
  notBefore: notBefore != null ? notBefore() : this.notBefore,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamTokenVerifyResponseSingleSegmentResult &&
          expiresOn == other.expiresOn &&
          id == other.id &&
          notBefore == other.notBefore &&
          status == other.status; } 
@override int get hashCode { return Object.hash(expiresOn, id, notBefore, status); } 
@override String toString() { return 'IamTokenVerifyResponseSingleSegmentResult(expiresOn: $expiresOn, id: $id, notBefore: $notBefore, status: $status)'; } 
 }
