// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleCancelRequest {const PostSubscriptionSchedulesScheduleCancelRequest({this.expand, this.invoiceNow, this.prorate, });

factory PostSubscriptionSchedulesScheduleCancelRequest.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleCancelRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  invoiceNow: json['invoice_now'] as bool?,
  prorate: json['prorate'] as bool?,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Defaults to `true`.
final bool? invoiceNow;

/// If the subscription schedule is `active`, indicates if the cancellation should be prorated. Defaults to `true`.
final bool? prorate;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'invoice_now': ?invoiceNow,
  'prorate': ?prorate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'invoice_now', 'prorate'}.contains(key)); } 
PostSubscriptionSchedulesScheduleCancelRequest copyWith({List<String> Function()? expand, bool Function()? invoiceNow, bool Function()? prorate, }) { return PostSubscriptionSchedulesScheduleCancelRequest(
  expand: expand != null ? expand() : this.expand,
  invoiceNow: invoiceNow != null ? invoiceNow() : this.invoiceNow,
  prorate: prorate != null ? prorate() : this.prorate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleCancelRequest &&
          listEquals(expand, other.expand) &&
          invoiceNow == other.invoiceNow &&
          prorate == other.prorate; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), invoiceNow, prorate); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleCancelRequest(expand: $expand, invoiceNow: $invoiceNow, prorate: $prorate)'; } 
 }
