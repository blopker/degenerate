// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_review_resource_session.dart';/// Information related to the browsing session of the user who initiated the payment.
final class ReviewSession {const ReviewSession({this.radarReviewResourceSession});

factory ReviewSession.fromJson(Map<String, dynamic> json) { return ReviewSession(
  radarReviewResourceSession: RadarReviewResourceSession.canParse(json) ? RadarReviewResourceSession.fromJson(json) : null,
); }

final RadarReviewResourceSession? radarReviewResourceSession;

/// At least one variant must be present.
bool get isValid { return radarReviewResourceSession != null; } 
Map<String, dynamic> toJson() { return {
  ...?radarReviewResourceSession?.toJson(),
}; } 
 }
