// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SourceReceiverFlow {const SourceReceiverFlow({this.address, required this.amountCharged, required this.amountReceived, required this.amountReturned, required this.refundAttributesMethod, required this.refundAttributesStatus, });

factory SourceReceiverFlow.fromJson(Map<String, dynamic> json) { return SourceReceiverFlow(
  address: json['address'] as String?,
  amountCharged: (json['amount_charged'] as num).toInt(),
  amountReceived: (json['amount_received'] as num).toInt(),
  amountReturned: (json['amount_returned'] as num).toInt(),
  refundAttributesMethod: json['refund_attributes_method'] as String,
  refundAttributesStatus: json['refund_attributes_status'] as String,
); }

/// The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
final String? address;

/// The total amount that was moved to your balance. This is almost always equal to the amount charged. In rare cases when customers deposit excess funds and we are unable to refund those, those funds get moved to your balance and show up in amount_charged as well. The amount charged is expressed in the source's currency.
final int amountCharged;

/// The total amount received by the receiver source. `amount_received = amount_returned + amount_charged` should be true for consumed sources unless customers deposit excess funds. The amount received is expressed in the source's currency.
final int amountReceived;

/// The total amount that was returned to the customer. The amount returned is expressed in the source's currency.
final int amountReturned;

/// Type of refund attribute method, one of `email`, `manual`, or `none`.
final String refundAttributesMethod;

/// Type of refund attribute status, one of `missing`, `requested`, or `available`.
final String refundAttributesStatus;

Map<String, dynamic> toJson() { return {
  'address': ?address,
  'amount_charged': amountCharged,
  'amount_received': amountReceived,
  'amount_returned': amountReturned,
  'refund_attributes_method': refundAttributesMethod,
  'refund_attributes_status': refundAttributesStatus,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_charged') && json['amount_charged'] is num &&
      json.containsKey('amount_received') && json['amount_received'] is num &&
      json.containsKey('amount_returned') && json['amount_returned'] is num &&
      json.containsKey('refund_attributes_method') && json['refund_attributes_method'] is String &&
      json.containsKey('refund_attributes_status') && json['refund_attributes_status'] is String; } 
SourceReceiverFlow copyWith({String? Function()? address, int? amountCharged, int? amountReceived, int? amountReturned, String? refundAttributesMethod, String? refundAttributesStatus, }) { return SourceReceiverFlow(
  address: address != null ? address() : this.address,
  amountCharged: amountCharged ?? this.amountCharged,
  amountReceived: amountReceived ?? this.amountReceived,
  amountReturned: amountReturned ?? this.amountReturned,
  refundAttributesMethod: refundAttributesMethod ?? this.refundAttributesMethod,
  refundAttributesStatus: refundAttributesStatus ?? this.refundAttributesStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceReceiverFlow &&
          address == other.address &&
          amountCharged == other.amountCharged &&
          amountReceived == other.amountReceived &&
          amountReturned == other.amountReturned &&
          refundAttributesMethod == other.refundAttributesMethod &&
          refundAttributesStatus == other.refundAttributesStatus; } 
@override int get hashCode { return Object.hash(address, amountCharged, amountReceived, amountReturned, refundAttributesMethod, refundAttributesStatus); } 
@override String toString() { return 'SourceReceiverFlow(address: $address, amountCharged: $amountCharged, amountReceived: $amountReceived, amountReturned: $amountReturned, refundAttributesMethod: $refundAttributesMethod, refundAttributesStatus: $refundAttributesStatus)'; } 
 }
