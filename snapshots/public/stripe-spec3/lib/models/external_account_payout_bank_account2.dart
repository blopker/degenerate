// GENERATED CODE - DO NOT MODIFY BY HAND

import 'external_account_payout_bank_account2_documents.dart';final class ExternalAccountPayoutBankAccount2AccountHolderType {const ExternalAccountPayoutBankAccount2AccountHolderType._(this.value);

factory ExternalAccountPayoutBankAccount2AccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => ExternalAccountPayoutBankAccount2AccountHolderType._(json),
}; }

static const ExternalAccountPayoutBankAccount2AccountHolderType company = ExternalAccountPayoutBankAccount2AccountHolderType._('company');

static const ExternalAccountPayoutBankAccount2AccountHolderType individual = ExternalAccountPayoutBankAccount2AccountHolderType._('individual');

static const List<ExternalAccountPayoutBankAccount2AccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ExternalAccountPayoutBankAccount2AccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccount2AccountHolderType($value)'; } 
 }
final class ExternalAccountPayoutBankAccount2AccountType {const ExternalAccountPayoutBankAccount2AccountType._(this.value);

factory ExternalAccountPayoutBankAccount2AccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'futsu' => futsu,
  'savings' => savings,
  'toza' => toza,
  _ => ExternalAccountPayoutBankAccount2AccountType._(json),
}; }

static const ExternalAccountPayoutBankAccount2AccountType checking = ExternalAccountPayoutBankAccount2AccountType._('checking');

static const ExternalAccountPayoutBankAccount2AccountType futsu = ExternalAccountPayoutBankAccount2AccountType._('futsu');

static const ExternalAccountPayoutBankAccount2AccountType savings = ExternalAccountPayoutBankAccount2AccountType._('savings');

static const ExternalAccountPayoutBankAccount2AccountType toza = ExternalAccountPayoutBankAccount2AccountType._('toza');

static const List<ExternalAccountPayoutBankAccount2AccountType> values = [checking, futsu, savings, toza];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ExternalAccountPayoutBankAccount2AccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccount2AccountType($value)'; } 
 }
final class ExternalAccountPayoutBankAccount2Object {const ExternalAccountPayoutBankAccount2Object._(this.value);

factory ExternalAccountPayoutBankAccount2Object.fromJson(String json) { return switch (json) {
  'bank_account' => bankAccount,
  _ => ExternalAccountPayoutBankAccount2Object._(json),
}; }

static const ExternalAccountPayoutBankAccount2Object bankAccount = ExternalAccountPayoutBankAccount2Object._('bank_account');

static const List<ExternalAccountPayoutBankAccount2Object> values = [bankAccount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ExternalAccountPayoutBankAccount2Object && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccount2Object($value)'; } 
 }
final class ExternalAccountPayoutBankAccount2 {const ExternalAccountPayoutBankAccount2({this.accountHolderName, this.accountHolderType, required this.accountNumber, this.accountType, required this.country, this.currency, this.documents, this.object, this.routingNumber, });

factory ExternalAccountPayoutBankAccount2.fromJson(Map<String, dynamic> json) { return ExternalAccountPayoutBankAccount2(
  accountHolderName: json['account_holder_name'] as String?,
  accountHolderType: json['account_holder_type'] != null ? ExternalAccountPayoutBankAccount2AccountHolderType.fromJson(json['account_holder_type'] as String) : null,
  accountNumber: json['account_number'] as String,
  accountType: json['account_type'] != null ? ExternalAccountPayoutBankAccount2AccountType.fromJson(json['account_type'] as String) : null,
  country: json['country'] as String,
  currency: json['currency'] as String?,
  documents: json['documents'] != null ? ExternalAccountPayoutBankAccount2Documents.fromJson(json['documents'] as Map<String, dynamic>) : null,
  object: json['object'] != null ? ExternalAccountPayoutBankAccount2Object.fromJson(json['object'] as String) : null,
  routingNumber: json['routing_number'] as String?,
); }

final String? accountHolderName;

final ExternalAccountPayoutBankAccount2AccountHolderType? accountHolderType;

final String accountNumber;

final ExternalAccountPayoutBankAccount2AccountType? accountType;

final String country;

final String? currency;

final ExternalAccountPayoutBankAccount2Documents? documents;

final ExternalAccountPayoutBankAccount2Object? object;

final String? routingNumber;

Map<String, dynamic> toJson() { return {
  'account_holder_name': ?accountHolderName,
  if (accountHolderType != null) 'account_holder_type': accountHolderType?.toJson(),
  'account_number': accountNumber,
  if (accountType != null) 'account_type': accountType?.toJson(),
  'country': country,
  'currency': ?currency,
  if (documents != null) 'documents': documents?.toJson(),
  if (object != null) 'object': object?.toJson(),
  'routing_number': ?routingNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_number') && json['account_number'] is String &&
      json.containsKey('country') && json['country'] is String; } 
ExternalAccountPayoutBankAccount2 copyWith({String Function()? accountHolderName, ExternalAccountPayoutBankAccount2AccountHolderType Function()? accountHolderType, String? accountNumber, ExternalAccountPayoutBankAccount2AccountType Function()? accountType, String? country, String Function()? currency, ExternalAccountPayoutBankAccount2Documents Function()? documents, ExternalAccountPayoutBankAccount2Object Function()? object, String Function()? routingNumber, }) { return ExternalAccountPayoutBankAccount2(
  accountHolderName: accountHolderName != null ? accountHolderName() : this.accountHolderName,
  accountHolderType: accountHolderType != null ? accountHolderType() : this.accountHolderType,
  accountNumber: accountNumber ?? this.accountNumber,
  accountType: accountType != null ? accountType() : this.accountType,
  country: country ?? this.country,
  currency: currency != null ? currency() : this.currency,
  documents: documents != null ? documents() : this.documents,
  object: object != null ? object() : this.object,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExternalAccountPayoutBankAccount2 &&
          accountHolderName == other.accountHolderName &&
          accountHolderType == other.accountHolderType &&
          accountNumber == other.accountNumber &&
          accountType == other.accountType &&
          country == other.country &&
          currency == other.currency &&
          documents == other.documents &&
          object == other.object &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderName, accountHolderType, accountNumber, accountType, country, currency, documents, object, routingNumber); } 
@override String toString() { return 'ExternalAccountPayoutBankAccount2(accountHolderName: $accountHolderName, accountHolderType: $accountHolderType, accountNumber: $accountNumber, accountType: $accountType, country: $country, currency: $currency, documents: $documents, object: $object, routingNumber: $routingNumber)'; } 
 }
