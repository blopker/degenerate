// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionNetworkData {const IssuingTransactionNetworkData({this.authorizationCode = const Omittable.absent(), this.processingDate = const Omittable.absent(), this.transactionId = const Omittable.absent(), });

factory IssuingTransactionNetworkData.fromJson(Map<String, dynamic> json) { return IssuingTransactionNetworkData(
  authorizationCode: json.containsKey('authorization_code') ? Omittable(json['authorization_code'] as String?) : const Omittable.absent(),
  processingDate: json.containsKey('processing_date') ? Omittable(json['processing_date'] as String?) : const Omittable.absent(),
  transactionId: json.containsKey('transaction_id') ? Omittable(json['transaction_id'] as String?) : const Omittable.absent(),
); }

/// A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
final Omittable<String?> authorizationCode;

/// The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
final Omittable<String?> processingDate;

/// Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
final Omittable<String?> transactionId;

Map<String, dynamic> toJson() { return {
  if (authorizationCode.isPresent) 'authorization_code': authorizationCode.value,
  if (processingDate.isPresent) 'processing_date': processingDate.value,
  if (transactionId.isPresent) 'transaction_id': transactionId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'authorization_code', 'processing_date', 'transaction_id'}.contains(key)); } 
IssuingTransactionNetworkData copyWith({Omittable<String?>? authorizationCode, Omittable<String?>? processingDate, Omittable<String?>? transactionId, }) { return IssuingTransactionNetworkData(
  authorizationCode: authorizationCode ?? this.authorizationCode,
  processingDate: processingDate ?? this.processingDate,
  transactionId: transactionId ?? this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionNetworkData &&
          authorizationCode == other.authorizationCode &&
          processingDate == other.processingDate &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(authorizationCode, processingDate, transactionId); } 
@override String toString() { return 'IssuingTransactionNetworkData(authorizationCode: $authorizationCode, processingDate: $processingDate, transactionId: $transactionId)'; } 
 }
