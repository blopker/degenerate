// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SourceTransactionGbpCreditTransferData {const SourceTransactionGbpCreditTransferData({this.fingerprint, this.fundingMethod, this.last4, this.reference, this.senderAccountNumber, this.senderName, this.senderSortCode, });

factory SourceTransactionGbpCreditTransferData.fromJson(Map<String, dynamic> json) { return SourceTransactionGbpCreditTransferData(
  fingerprint: json['fingerprint'] as String?,
  fundingMethod: json['funding_method'] as String?,
  last4: json['last4'] as String?,
  reference: json['reference'] as String?,
  senderAccountNumber: json['sender_account_number'] as String?,
  senderName: json['sender_name'] as String?,
  senderSortCode: json['sender_sort_code'] as String?,
); }

/// Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
final String? fingerprint;

/// The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
final String? fundingMethod;

/// Last 4 digits of sender account number associated with the transfer.
final String? last4;

/// Sender entered arbitrary information about the transfer.
final String? reference;

/// Sender account number associated with the transfer.
final String? senderAccountNumber;

/// Sender name associated with the transfer.
final String? senderName;

/// Sender sort code associated with the transfer.
final String? senderSortCode;

Map<String, dynamic> toJson() { return {
  'fingerprint': ?fingerprint,
  'funding_method': ?fundingMethod,
  'last4': ?last4,
  'reference': ?reference,
  'sender_account_number': ?senderAccountNumber,
  'sender_name': ?senderName,
  'sender_sort_code': ?senderSortCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SourceTransactionGbpCreditTransferData copyWith({String Function()? fingerprint, String Function()? fundingMethod, String Function()? last4, String Function()? reference, String Function()? senderAccountNumber, String Function()? senderName, String Function()? senderSortCode, }) { return SourceTransactionGbpCreditTransferData(
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  fundingMethod: fundingMethod != null ? fundingMethod() : this.fundingMethod,
  last4: last4 != null ? last4() : this.last4,
  reference: reference != null ? reference() : this.reference,
  senderAccountNumber: senderAccountNumber != null ? senderAccountNumber() : this.senderAccountNumber,
  senderName: senderName != null ? senderName() : this.senderName,
  senderSortCode: senderSortCode != null ? senderSortCode() : this.senderSortCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTransactionGbpCreditTransferData &&
          fingerprint == other.fingerprint &&
          fundingMethod == other.fundingMethod &&
          last4 == other.last4 &&
          reference == other.reference &&
          senderAccountNumber == other.senderAccountNumber &&
          senderName == other.senderName &&
          senderSortCode == other.senderSortCode; } 
@override int get hashCode { return Object.hash(fingerprint, fundingMethod, last4, reference, senderAccountNumber, senderName, senderSortCode); } 
@override String toString() { return 'SourceTransactionGbpCreditTransferData(fingerprint: $fingerprint, fundingMethod: $fundingMethod, last4: $last4, reference: $reference, senderAccountNumber: $senderAccountNumber, senderName: $senderName, senderSortCode: $senderSortCode)'; } 
 }
