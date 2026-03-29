// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountSessionsRequestComponentsDisputesListFeatures {const PostAccountSessionsRequestComponentsDisputesListFeatures({this.capturePayments, this.destinationOnBehalfOfChargeManagement, this.disputeManagement, this.refundManagement, });

factory PostAccountSessionsRequestComponentsDisputesListFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsDisputesListFeatures(
  capturePayments: json['capture_payments'] as bool?,
  destinationOnBehalfOfChargeManagement: json['destination_on_behalf_of_charge_management'] as bool?,
  disputeManagement: json['dispute_management'] as bool?,
  refundManagement: json['refund_management'] as bool?,
); }

final bool? capturePayments;

final bool? destinationOnBehalfOfChargeManagement;

final bool? disputeManagement;

final bool? refundManagement;

Map<String, dynamic> toJson() { return {
  'capture_payments': ?capturePayments,
  'destination_on_behalf_of_charge_management': ?destinationOnBehalfOfChargeManagement,
  'dispute_management': ?disputeManagement,
  'refund_management': ?refundManagement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_payments', 'destination_on_behalf_of_charge_management', 'dispute_management', 'refund_management'}.contains(key)); } 
PostAccountSessionsRequestComponentsDisputesListFeatures copyWith({bool Function()? capturePayments, bool Function()? destinationOnBehalfOfChargeManagement, bool Function()? disputeManagement, bool Function()? refundManagement, }) { return PostAccountSessionsRequestComponentsDisputesListFeatures(
  capturePayments: capturePayments != null ? capturePayments() : this.capturePayments,
  destinationOnBehalfOfChargeManagement: destinationOnBehalfOfChargeManagement != null ? destinationOnBehalfOfChargeManagement() : this.destinationOnBehalfOfChargeManagement,
  disputeManagement: disputeManagement != null ? disputeManagement() : this.disputeManagement,
  refundManagement: refundManagement != null ? refundManagement() : this.refundManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsDisputesListFeatures &&
          capturePayments == other.capturePayments &&
          destinationOnBehalfOfChargeManagement == other.destinationOnBehalfOfChargeManagement &&
          disputeManagement == other.disputeManagement &&
          refundManagement == other.refundManagement; } 
@override int get hashCode { return Object.hash(capturePayments, destinationOnBehalfOfChargeManagement, disputeManagement, refundManagement); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsDisputesListFeatures(capturePayments: $capturePayments, destinationOnBehalfOfChargeManagement: $destinationOnBehalfOfChargeManagement, disputeManagement: $disputeManagement, refundManagement: $refundManagement)'; } 
 }
