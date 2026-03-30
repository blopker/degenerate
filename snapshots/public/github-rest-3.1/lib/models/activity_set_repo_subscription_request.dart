// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActivitySetRepoSubscriptionRequest {const ActivitySetRepoSubscriptionRequest({this.subscribed, this.ignored, });

factory ActivitySetRepoSubscriptionRequest.fromJson(Map<String, dynamic> json) { return ActivitySetRepoSubscriptionRequest(
  subscribed: json['subscribed'] as bool?,
  ignored: json['ignored'] as bool?,
); }

/// Determines if notifications should be received from this repository.
final bool? subscribed;

/// Determines if all notifications should be blocked from this repository.
final bool? ignored;

Map<String, dynamic> toJson() { return {
  'subscribed': ?subscribed,
  'ignored': ?ignored,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'subscribed', 'ignored'}.contains(key)); } 
ActivitySetRepoSubscriptionRequest copyWith({bool Function()? subscribed, bool Function()? ignored, }) { return ActivitySetRepoSubscriptionRequest(
  subscribed: subscribed != null ? subscribed() : this.subscribed,
  ignored: ignored != null ? ignored() : this.ignored,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActivitySetRepoSubscriptionRequest &&
          subscribed == other.subscribed &&
          ignored == other.ignored; } 
@override int get hashCode { return Object.hash(subscribed, ignored); } 
@override String toString() { return 'ActivitySetRepoSubscriptionRequest(subscribed: $subscribed, ignored: $ignored)'; } 
 }
