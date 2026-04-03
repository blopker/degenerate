// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode {const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._(this.value);

factory PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode.fromJson(String json) { return switch (json) {
  'account_closed' => accountClosed,
  'account_frozen' => accountFrozen,
  'bank_account_restricted' => bankAccountRestricted,
  'bank_ownership_changed' => bankOwnershipChanged,
  'debit_not_authorized' => debitNotAuthorized,
  'incorrect_account_holder_address' => incorrectAccountHolderAddress,
  'incorrect_account_holder_name' => incorrectAccountHolderName,
  'incorrect_account_holder_tax_id' => incorrectAccountHolderTaxId,
  'insufficient_funds' => insufficientFunds,
  'invalid_account_number' => invalidAccountNumber,
  'invalid_currency' => invalidCurrency,
  'no_account' => noAccount,
  'other' => $other,
  _ => PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._(json),
}; }

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode accountClosed = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('account_closed');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode accountFrozen = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('account_frozen');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode bankAccountRestricted = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('bank_account_restricted');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode bankOwnershipChanged = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('bank_ownership_changed');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode debitNotAuthorized = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('debit_not_authorized');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode incorrectAccountHolderAddress = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('incorrect_account_holder_address');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode incorrectAccountHolderName = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('incorrect_account_holder_name');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode incorrectAccountHolderTaxId = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('incorrect_account_holder_tax_id');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode insufficientFunds = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('insufficient_funds');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode invalidAccountNumber = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('invalid_account_number');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode invalidCurrency = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('invalid_currency');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode noAccount = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('no_account');

static const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode $other = PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode._('other');

static const List<PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode> values = [accountClosed, accountFrozen, bankAccountRestricted, bankOwnershipChanged, debitNotAuthorized, incorrectAccountHolderAddress, incorrectAccountHolderName, incorrectAccountHolderTaxId, insufficientFunds, invalidAccountNumber, invalidCurrency, noAccount, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode($value)'; } 
 }
/// Details about a failed InboundTransfer.
@immutable final class PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails {const PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails({this.code});

factory PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails(
  code: json['code'] != null ? PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode.fromJson(json['code'] as String) : null,
); }

final PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode? code;

Map<String, dynamic> toJson() { return {
  if (code != null) 'code': code?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code'}.contains(key)); } 
PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails copyWith({PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetailsCode Function()? code}) { return PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails(
  code: code != null ? code() : this.code,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails &&
          code == other.code; } 
@override int get hashCode { return code.hashCode; } 
@override String toString() { return 'PostTestHelpersTreasuryInboundTransfersIdFailRequestFailureDetails(code: $code)'; } 
 }
