// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch {const PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch({required this.traceId});

factory PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch(
  traceId: json['trace_id'] as String,
); }

final String traceId;

Map<String, dynamic> toJson() { return {
  'trace_id': traceId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('trace_id') && json['trace_id'] is String; } 
PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch copyWith({String? traceId}) { return PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch(
  traceId: traceId ?? this.traceId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch &&
          traceId == other.traceId; } 
@override int get hashCode { return traceId.hashCode; } 
@override String toString() { return 'PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsAch(traceId: $traceId)'; } 
 }
