// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountSessionsRequestComponentsPaymentDisputesFeatures {const PostAccountSessionsRequestComponentsPaymentDisputesFeatures({this.destinationOnBehalfOfChargeManagement, this.disputeManagement, this.refundManagement, });

factory PostAccountSessionsRequestComponentsPaymentDisputesFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsPaymentDisputesFeatures(
  destinationOnBehalfOfChargeManagement: json['destination_on_behalf_of_charge_management'] as bool?,
  disputeManagement: json['dispute_management'] as bool?,
  refundManagement: json['refund_management'] as bool?,
); }

final bool? destinationOnBehalfOfChargeManagement;

final bool? disputeManagement;

final bool? refundManagement;

Map<String, dynamic> toJson() { return {
  'destination_on_behalf_of_charge_management': ?destinationOnBehalfOfChargeManagement,
  'dispute_management': ?disputeManagement,
  'refund_management': ?refundManagement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'destination_on_behalf_of_charge_management', 'dispute_management', 'refund_management'}.contains(key)); } 
PostAccountSessionsRequestComponentsPaymentDisputesFeatures copyWith({bool Function()? destinationOnBehalfOfChargeManagement, bool Function()? disputeManagement, bool Function()? refundManagement, }) { return PostAccountSessionsRequestComponentsPaymentDisputesFeatures(
  destinationOnBehalfOfChargeManagement: destinationOnBehalfOfChargeManagement != null ? destinationOnBehalfOfChargeManagement() : this.destinationOnBehalfOfChargeManagement,
  disputeManagement: disputeManagement != null ? disputeManagement() : this.disputeManagement,
  refundManagement: refundManagement != null ? refundManagement() : this.refundManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsPaymentDisputesFeatures &&
          destinationOnBehalfOfChargeManagement == other.destinationOnBehalfOfChargeManagement &&
          disputeManagement == other.disputeManagement &&
          refundManagement == other.refundManagement; } 
@override int get hashCode { return Object.hash(destinationOnBehalfOfChargeManagement, disputeManagement, refundManagement); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsPaymentDisputesFeatures(destinationOnBehalfOfChargeManagement: $destinationOnBehalfOfChargeManagement, disputeManagement: $disputeManagement, refundManagement: $refundManagement)'; } 
 }
