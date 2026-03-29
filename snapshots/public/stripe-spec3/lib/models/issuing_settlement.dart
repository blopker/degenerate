// GENERATED CODE - DO NOT MODIFY BY HAND

/// The card network for this settlement report. One of ["visa", "maestro"]
final class IssuingSettlementNetwork {const IssuingSettlementNetwork._(this.value);

factory IssuingSettlementNetwork.fromJson(String json) { return switch (json) {
  'maestro' => maestro,
  'visa' => visa,
  _ => IssuingSettlementNetwork._(json),
}; }

static const IssuingSettlementNetwork maestro = IssuingSettlementNetwork._('maestro');

static const IssuingSettlementNetwork visa = IssuingSettlementNetwork._('visa');

static const List<IssuingSettlementNetwork> values = [maestro, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingSettlementNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingSettlementNetwork($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class IssuingSettlementObject {const IssuingSettlementObject._(this.value);

factory IssuingSettlementObject.fromJson(String json) { return switch (json) {
  'issuing.settlement' => issuingSettlement,
  _ => IssuingSettlementObject._(json),
}; }

static const IssuingSettlementObject issuingSettlement = IssuingSettlementObject._('issuing.settlement');

static const List<IssuingSettlementObject> values = [issuingSettlement];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingSettlementObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingSettlementObject($value)'; } 
 }
/// The current processing status of this settlement.
final class IssuingSettlementStatus {const IssuingSettlementStatus._(this.value);

factory IssuingSettlementStatus.fromJson(String json) { return switch (json) {
  'complete' => complete,
  'pending' => pending,
  _ => IssuingSettlementStatus._(json),
}; }

static const IssuingSettlementStatus complete = IssuingSettlementStatus._('complete');

static const IssuingSettlementStatus pending = IssuingSettlementStatus._('pending');

static const List<IssuingSettlementStatus> values = [complete, pending];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingSettlementStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingSettlementStatus($value)'; } 
 }
/// When a non-stripe BIN is used, any use of an [issued card](https://docs.stripe.com/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing `Settlement` object.
final class IssuingSettlement {const IssuingSettlement({required this.bin, required this.clearingDate, required this.created, required this.currency, required this.id, required this.interchangeFeesAmount, required this.livemode, required this.metadata, required this.netTotalAmount, required this.network, required this.networkFeesAmount, required this.networkSettlementIdentifier, required this.object, required this.settlementService, required this.status, required this.transactionAmount, required this.transactionCount, });

factory IssuingSettlement.fromJson(Map<String, dynamic> json) { return IssuingSettlement(
  bin: json['bin'] as String,
  clearingDate: (json['clearing_date'] as num).toInt(),
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  id: json['id'] as String,
  interchangeFeesAmount: (json['interchange_fees_amount'] as num).toInt(),
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  netTotalAmount: (json['net_total_amount'] as num).toInt(),
  network: IssuingSettlementNetwork.fromJson(json['network'] as String),
  networkFeesAmount: (json['network_fees_amount'] as num).toInt(),
  networkSettlementIdentifier: json['network_settlement_identifier'] as String,
  object: IssuingSettlementObject.fromJson(json['object'] as String),
  settlementService: json['settlement_service'] as String,
  status: IssuingSettlementStatus.fromJson(json['status'] as String),
  transactionAmount: (json['transaction_amount'] as num).toInt(),
  transactionCount: (json['transaction_count'] as num).toInt(),
); }

/// The Bank Identification Number reflecting this settlement record.
final String bin;

/// The date that the transactions are cleared and posted to user's accounts.
final int clearingDate;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// Unique identifier for the object.
final String id;

/// The total interchange received as reimbursement for the transactions.
final int interchangeFeesAmount;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// The total net amount required to settle with the network.
final int netTotalAmount;

/// The card network for this settlement report. One of ["visa", "maestro"]
final IssuingSettlementNetwork network;

/// The total amount of fees owed to the network.
final int networkFeesAmount;

/// The Settlement Identification Number assigned by the network.
final String networkSettlementIdentifier;

/// String representing the object's type. Objects of the same type share the same value.
final IssuingSettlementObject object;

/// One of `international` or `uk_national_net`.
final String settlementService;

/// The current processing status of this settlement.
final IssuingSettlementStatus status;

/// The total transaction amount reflected in this settlement.
final int transactionAmount;

/// The total number of transactions reflected in this settlement.
final int transactionCount;

Map<String, dynamic> toJson() { return {
  'bin': bin,
  'clearing_date': clearingDate,
  'created': created,
  'currency': currency,
  'id': id,
  'interchange_fees_amount': interchangeFeesAmount,
  'livemode': livemode,
  'metadata': metadata,
  'net_total_amount': netTotalAmount,
  'network': network.toJson(),
  'network_fees_amount': networkFeesAmount,
  'network_settlement_identifier': networkSettlementIdentifier,
  'object': object.toJson(),
  'settlement_service': settlementService,
  'status': status.toJson(),
  'transaction_amount': transactionAmount,
  'transaction_count': transactionCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bin') && json['bin'] is String &&
      json.containsKey('clearing_date') && json['clearing_date'] is num &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('interchange_fees_amount') && json['interchange_fees_amount'] is num &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('net_total_amount') && json['net_total_amount'] is num &&
      json.containsKey('network') &&
      json.containsKey('network_fees_amount') && json['network_fees_amount'] is num &&
      json.containsKey('network_settlement_identifier') && json['network_settlement_identifier'] is String &&
      json.containsKey('object') &&
      json.containsKey('settlement_service') && json['settlement_service'] is String &&
      json.containsKey('status') &&
      json.containsKey('transaction_amount') && json['transaction_amount'] is num &&
      json.containsKey('transaction_count') && json['transaction_count'] is num; } 
IssuingSettlement copyWith({String? bin, int? clearingDate, int? created, String? currency, String? id, int? interchangeFeesAmount, bool? livemode, Map<String,String>? metadata, int? netTotalAmount, IssuingSettlementNetwork? network, int? networkFeesAmount, String? networkSettlementIdentifier, IssuingSettlementObject? object, String? settlementService, IssuingSettlementStatus? status, int? transactionAmount, int? transactionCount, }) { return IssuingSettlement(
  bin: bin ?? this.bin,
  clearingDate: clearingDate ?? this.clearingDate,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  id: id ?? this.id,
  interchangeFeesAmount: interchangeFeesAmount ?? this.interchangeFeesAmount,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  netTotalAmount: netTotalAmount ?? this.netTotalAmount,
  network: network ?? this.network,
  networkFeesAmount: networkFeesAmount ?? this.networkFeesAmount,
  networkSettlementIdentifier: networkSettlementIdentifier ?? this.networkSettlementIdentifier,
  object: object ?? this.object,
  settlementService: settlementService ?? this.settlementService,
  status: status ?? this.status,
  transactionAmount: transactionAmount ?? this.transactionAmount,
  transactionCount: transactionCount ?? this.transactionCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingSettlement &&
          bin == other.bin &&
          clearingDate == other.clearingDate &&
          created == other.created &&
          currency == other.currency &&
          id == other.id &&
          interchangeFeesAmount == other.interchangeFeesAmount &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          netTotalAmount == other.netTotalAmount &&
          network == other.network &&
          networkFeesAmount == other.networkFeesAmount &&
          networkSettlementIdentifier == other.networkSettlementIdentifier &&
          object == other.object &&
          settlementService == other.settlementService &&
          status == other.status &&
          transactionAmount == other.transactionAmount &&
          transactionCount == other.transactionCount; } 
@override int get hashCode { return Object.hash(bin, clearingDate, created, currency, id, interchangeFeesAmount, livemode, metadata, netTotalAmount, network, networkFeesAmount, networkSettlementIdentifier, object, settlementService, status, transactionAmount, transactionCount); } 
@override String toString() { return 'IssuingSettlement(bin: $bin, clearingDate: $clearingDate, created: $created, currency: $currency, id: $id, interchangeFeesAmount: $interchangeFeesAmount, livemode: $livemode, metadata: $metadata, netTotalAmount: $netTotalAmount, network: $network, networkFeesAmount: $networkFeesAmount, networkSettlementIdentifier: $networkSettlementIdentifier, object: $object, settlementService: $settlementService, status: $status, transactionAmount: $transactionAmount, transactionCount: $transactionCount)'; } 
 }
