// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaid {const InvoicePaid({this.invoiceId});

factory InvoicePaid.fromJson(Map<String, dynamic> json) { return InvoicePaid(
  invoiceId: json['invoiceId'] as String?,
); }

final String? invoiceId;

Map<String, dynamic> toJson() { return {
  'invoiceId': ?invoiceId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'invoiceId'}.contains(key)); } 
InvoicePaid copyWith({String Function()? invoiceId}) { return InvoicePaid(
  invoiceId: invoiceId != null ? invoiceId() : this.invoiceId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaid &&
          invoiceId == other.invoiceId; } 
@override int get hashCode { return invoiceId.hashCode; } 
@override String toString() { return 'InvoicePaid(invoiceId: $invoiceId)'; } 
 }
