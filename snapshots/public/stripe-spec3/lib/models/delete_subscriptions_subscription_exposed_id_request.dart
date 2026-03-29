// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_subscriptions_subscription_exposed_id_request_cancellation_details.dart';final class DeleteSubscriptionsSubscriptionExposedIdRequest {const DeleteSubscriptionsSubscriptionExposedIdRequest({this.cancellationDetails, this.expand, this.invoiceNow, this.prorate, });

factory DeleteSubscriptionsSubscriptionExposedIdRequest.fromJson(Map<String, dynamic> json) { return DeleteSubscriptionsSubscriptionExposedIdRequest(
  cancellationDetails: json['cancellation_details'] != null ? DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails.fromJson(json['cancellation_details'] as Map<String, dynamic>) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  invoiceNow: json['invoice_now'] as bool?,
  prorate: json['prorate'] as bool?,
); }

/// Details about why this subscription was cancelled
final DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails? cancellationDetails;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items. Defaults to `false`.
final bool? invoiceNow;

/// Will generate a proration invoice item that credits remaining unused time until the subscription period end. Defaults to `false`.
final bool? prorate;

Map<String, dynamic> toJson() { return {
  if (cancellationDetails != null) 'cancellation_details': cancellationDetails?.toJson(),
  'expand': ?expand,
  'invoice_now': ?invoiceNow,
  'prorate': ?prorate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cancellation_details', 'expand', 'invoice_now', 'prorate'}.contains(key)); } 
DeleteSubscriptionsSubscriptionExposedIdRequest copyWith({DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetails Function()? cancellationDetails, List<String> Function()? expand, bool Function()? invoiceNow, bool Function()? prorate, }) { return DeleteSubscriptionsSubscriptionExposedIdRequest(
  cancellationDetails: cancellationDetails != null ? cancellationDetails() : this.cancellationDetails,
  expand: expand != null ? expand() : this.expand,
  invoiceNow: invoiceNow != null ? invoiceNow() : this.invoiceNow,
  prorate: prorate != null ? prorate() : this.prorate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteSubscriptionsSubscriptionExposedIdRequest &&
          cancellationDetails == other.cancellationDetails &&
          listEquals(expand, other.expand) &&
          invoiceNow == other.invoiceNow &&
          prorate == other.prorate; } 
@override int get hashCode { return Object.hash(cancellationDetails, Object.hashAll(expand ?? const []), invoiceNow, prorate); } 
@override String toString() { return 'DeleteSubscriptionsSubscriptionExposedIdRequest(cancellationDetails: $cancellationDetails, expand: $expand, invoiceNow: $invoiceNow, prorate: $prorate)'; } 
 }
