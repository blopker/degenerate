// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetInvoicePaymentsStatus {const GetInvoicePaymentsStatus._(this.value);

factory GetInvoicePaymentsStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'open' => open,
  'paid' => paid,
  _ => GetInvoicePaymentsStatus._(json),
}; }

static const GetInvoicePaymentsStatus canceled = GetInvoicePaymentsStatus._('canceled');

static const GetInvoicePaymentsStatus open = GetInvoicePaymentsStatus._('open');

static const GetInvoicePaymentsStatus paid = GetInvoicePaymentsStatus._('paid');

static const List<GetInvoicePaymentsStatus> values = [canceled, open, paid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetInvoicePaymentsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetInvoicePaymentsStatus($value)'; } 
 }
