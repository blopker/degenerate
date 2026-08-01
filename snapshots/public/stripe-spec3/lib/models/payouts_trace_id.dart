// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PayoutsTraceId {const PayoutsTraceId({required this.status, this.value = const Omittable.absent(), });

factory PayoutsTraceId.fromJson(Map<String, dynamic> json) { return PayoutsTraceId(
  status: json['status'] as String,
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

/// Possible values are `pending`, `supported`, and `unsupported`. When `payout.status` is `pending` or `in_transit`, this will be `pending`. When the payout transitions to `paid`, `failed`, or `canceled`, this status will become `supported` or `unsupported` shortly after in most cases. In some cases, this may appear as `pending` for up to 10 days after `arrival_date` until transitioning to `supported` or `unsupported`.
final String status;

/// The trace ID value if `trace_id.status` is `supported`, otherwise `nil`.
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  'status': status,
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status') && json['status'] is String; } 
PayoutsTraceId copyWith({String? status, Omittable<String?>? value, }) { return PayoutsTraceId(
  status: status ?? this.status,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PayoutsTraceId &&
          status == other.status &&
          value == other.value; } 
@override int get hashCode { return Object.hash(status, value); } 
@override String toString() { return 'PayoutsTraceId(status: $status, value: $value)'; } 
 }
