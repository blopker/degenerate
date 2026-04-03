// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetTreasuryOutboundPaymentsStatus {const GetTreasuryOutboundPaymentsStatus._(this.value);

factory GetTreasuryOutboundPaymentsStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'failed' => failed,
  'posted' => posted,
  'processing' => processing,
  'returned' => returned,
  _ => GetTreasuryOutboundPaymentsStatus._(json),
}; }

static const GetTreasuryOutboundPaymentsStatus canceled = GetTreasuryOutboundPaymentsStatus._('canceled');

static const GetTreasuryOutboundPaymentsStatus failed = GetTreasuryOutboundPaymentsStatus._('failed');

static const GetTreasuryOutboundPaymentsStatus posted = GetTreasuryOutboundPaymentsStatus._('posted');

static const GetTreasuryOutboundPaymentsStatus processing = GetTreasuryOutboundPaymentsStatus._('processing');

static const GetTreasuryOutboundPaymentsStatus returned = GetTreasuryOutboundPaymentsStatus._('returned');

static const List<GetTreasuryOutboundPaymentsStatus> values = [canceled, failed, posted, processing, returned];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTreasuryOutboundPaymentsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetTreasuryOutboundPaymentsStatus($value)'; } 
 }
