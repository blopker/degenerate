// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cancellation_details.dart';/// Details about why this subscription was cancelled
final class SubscriptionCancellationDetails {const SubscriptionCancellationDetails({this.cancellationDetails});

factory SubscriptionCancellationDetails.fromJson(Map<String, dynamic> json) { return SubscriptionCancellationDetails(
  cancellationDetails: CancellationDetails.canParse(json) ? CancellationDetails.fromJson(json) : null,
); }

final CancellationDetails? cancellationDetails;

/// At least one variant must be present.
bool get isValid { return cancellationDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?cancellationDetails?.toJson(),
}; } 
 }
