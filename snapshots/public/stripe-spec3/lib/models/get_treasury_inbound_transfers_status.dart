// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetTreasuryInboundTransfersStatus {const GetTreasuryInboundTransfersStatus._(this.value);

factory GetTreasuryInboundTransfersStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'failed' => failed,
  'processing' => processing,
  'succeeded' => succeeded,
  _ => GetTreasuryInboundTransfersStatus._(json),
}; }

static const GetTreasuryInboundTransfersStatus canceled = GetTreasuryInboundTransfersStatus._('canceled');

static const GetTreasuryInboundTransfersStatus failed = GetTreasuryInboundTransfersStatus._('failed');

static const GetTreasuryInboundTransfersStatus processing = GetTreasuryInboundTransfersStatus._('processing');

static const GetTreasuryInboundTransfersStatus succeeded = GetTreasuryInboundTransfersStatus._('succeeded');

static const List<GetTreasuryInboundTransfersStatus> values = [canceled, failed, processing, succeeded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTreasuryInboundTransfersStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetTreasuryInboundTransfersStatus($value)'; } 
 }
