// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_transaction.dart';import 'source.dart';import 'topup_balance_transaction.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class TopupObject {const TopupObject._(this.value);

factory TopupObject.fromJson(String json) { return switch (json) {
  'topup' => topup,
  _ => TopupObject._(json),
}; }

static const TopupObject topup = TopupObject._('topup');

static const List<TopupObject> values = [topup];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TopupObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TopupObject($value)'; } 
 }
/// The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
@immutable final class TopupStatus {const TopupStatus._(this.value);

factory TopupStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'failed' => failed,
  'pending' => pending,
  'reversed' => reversed,
  'succeeded' => succeeded,
  _ => TopupStatus._(json),
}; }

static const TopupStatus canceled = TopupStatus._('canceled');

static const TopupStatus failed = TopupStatus._('failed');

static const TopupStatus pending = TopupStatus._('pending');

static const TopupStatus reversed = TopupStatus._('reversed');

static const TopupStatus succeeded = TopupStatus._('succeeded');

static const List<TopupStatus> values = [canceled, failed, pending, reversed, succeeded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TopupStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TopupStatus($value)'; } 
 }
/// To top up your Stripe balance, you create a top-up object. You can retrieve
/// individual top-ups, as well as list all top-ups. Top-ups are identified by a
/// unique, random ID.
/// 
/// Related guide: [Topping up your platform account](https://docs.stripe.com/connect/top-ups)
@immutable final class Topup {const Topup({required this.amount, required this.created, required this.currency, required this.id, required this.livemode, required this.metadata, required this.object, required this.status, this.balanceTransaction = const Omittable.absent(), this.description = const Omittable.absent(), this.expectedAvailabilityDate = const Omittable.absent(), this.failureCode = const Omittable.absent(), this.failureMessage = const Omittable.absent(), this.source = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), this.transferGroup = const Omittable.absent(), });

factory Topup.fromJson(Map<String, dynamic> json) { return Topup(
  amount: (json['amount'] as num).toInt(),
  balanceTransaction: json.containsKey('balance_transaction') ? Omittable(json['balance_transaction'] != null ? OneOf2.parse(json['balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  expectedAvailabilityDate: json.containsKey('expected_availability_date') ? Omittable(json['expected_availability_date'] != null ? (json['expected_availability_date'] as num).toInt() : null) : const Omittable.absent(),
  failureCode: json.containsKey('failure_code') ? Omittable(json['failure_code'] as String?) : const Omittable.absent(),
  failureMessage: json.containsKey('failure_message') ? Omittable(json['failure_message'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  object: TopupObject.fromJson(json['object'] as String),
  source: json.containsKey('source') ? Omittable(json['source'] != null ? Source.fromJson(json['source'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
  status: TopupStatus.fromJson(json['status'] as String),
  transferGroup: json.containsKey('transfer_group') ? Omittable(json['transfer_group'] as String?) : const Omittable.absent(),
); }

/// Amount transferred.
final int amount;

/// ID of the balance transaction that describes the impact of this top-up on your account balance. May not be specified depending on status of top-up.
final Omittable<TopupBalanceTransaction?> balanceTransaction;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final Omittable<String?> description;

/// Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
final Omittable<int?> expectedAvailabilityDate;

/// Error code explaining reason for top-up failure if available (see [the errors section](https://docs.stripe.com/api#errors) for a list of codes).
final Omittable<String?> failureCode;

/// Message to user further explaining reason for top-up failure if available.
final Omittable<String?> failureMessage;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final TopupObject object;

/// The source field is deprecated. It might not always be present in the API response.
final Omittable<Source?> source;

/// Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
final Omittable<String?> statementDescriptor;

/// The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
final TopupStatus status;

/// A string that identifies this top-up as part of a group.
final Omittable<String?> transferGroup;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (balanceTransaction.isPresent) 'balance_transaction': balanceTransaction.value?.toJson(),
  'created': created,
  'currency': currency,
  if (description.isPresent) 'description': description.value,
  if (expectedAvailabilityDate.isPresent) 'expected_availability_date': expectedAvailabilityDate.value,
  if (failureCode.isPresent) 'failure_code': failureCode.value,
  if (failureMessage.isPresent) 'failure_message': failureMessage.value,
  'id': id,
  'livemode': livemode,
  'metadata': metadata,
  'object': object.toJson(),
  if (source.isPresent) 'source': source.value?.toJson(),
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
  'status': status.toJson(),
  if (transferGroup.isPresent) 'transfer_group': transferGroup.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('status'); } 
Topup copyWith({int? amount, Omittable<TopupBalanceTransaction?>? balanceTransaction, int? created, String? currency, Omittable<String?>? description, Omittable<int?>? expectedAvailabilityDate, Omittable<String?>? failureCode, Omittable<String?>? failureMessage, String? id, bool? livemode, Map<String,String>? metadata, TopupObject? object, Omittable<Source?>? source, Omittable<String?>? statementDescriptor, TopupStatus? status, Omittable<String?>? transferGroup, }) { return Topup(
  amount: amount ?? this.amount,
  balanceTransaction: balanceTransaction ?? this.balanceTransaction,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  description: description ?? this.description,
  expectedAvailabilityDate: expectedAvailabilityDate ?? this.expectedAvailabilityDate,
  failureCode: failureCode ?? this.failureCode,
  failureMessage: failureMessage ?? this.failureMessage,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  source: source ?? this.source,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
  status: status ?? this.status,
  transferGroup: transferGroup ?? this.transferGroup,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Topup &&
          amount == other.amount &&
          balanceTransaction == other.balanceTransaction &&
          created == other.created &&
          currency == other.currency &&
          description == other.description &&
          expectedAvailabilityDate == other.expectedAvailabilityDate &&
          failureCode == other.failureCode &&
          failureMessage == other.failureMessage &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          source == other.source &&
          statementDescriptor == other.statementDescriptor &&
          status == other.status &&
          transferGroup == other.transferGroup; } 
@override int get hashCode { return Object.hash(amount, balanceTransaction, created, currency, description, expectedAvailabilityDate, failureCode, failureMessage, id, livemode, metadata, object, source, statementDescriptor, status, transferGroup); } 
@override String toString() { return 'Topup(amount: $amount, balanceTransaction: $balanceTransaction, created: $created, currency: $currency, description: $description, expectedAvailabilityDate: $expectedAvailabilityDate, failureCode: $failureCode, failureMessage: $failureMessage, id: $id, livemode: $livemode, metadata: $metadata, object: $object, source: $source, statementDescriptor: $statementDescriptor, status: $status, transferGroup: $transferGroup)'; } 
 }
