// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest {const DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest({this.expand, this.invoiceNow, this.prorate, });

factory DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest.fromJson(Map<String, dynamic> json) { return DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  invoiceNow: json['invoice_now'] as bool?,
  prorate: json['prorate'] as bool?,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Can be set to `true` if `at_period_end` is not set to `true`. Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items.
final bool? invoiceNow;

/// Can be set to `true` if `at_period_end` is not set to `true`. Will generate a proration invoice item that credits remaining unused time until the subscription period end.
final bool? prorate;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'invoice_now': ?invoiceNow,
  'prorate': ?prorate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'invoice_now', 'prorate'}.contains(key)); } 
DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest copyWith({List<String> Function()? expand, bool Function()? invoiceNow, bool Function()? prorate, }) { return DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest(
  expand: expand != null ? expand() : this.expand,
  invoiceNow: invoiceNow != null ? invoiceNow() : this.invoiceNow,
  prorate: prorate != null ? prorate() : this.prorate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest &&
          listEquals(expand, other.expand) &&
          invoiceNow == other.invoiceNow &&
          prorate == other.prorate; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), invoiceNow, prorate); } 
@override String toString() { return 'DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest(expand: $expand, invoiceNow: $invoiceNow, prorate: $prorate)'; } 
 }
