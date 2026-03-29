// GENERATED CODE - DO NOT MODIFY BY HAND

final class TimelineReviewedEventLinksPullRequest {const TimelineReviewedEventLinksPullRequest({required this.href});

factory TimelineReviewedEventLinksPullRequest.fromJson(Map<String, dynamic> json) { return TimelineReviewedEventLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
TimelineReviewedEventLinksPullRequest copyWith({String? href}) { return TimelineReviewedEventLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimelineReviewedEventLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'TimelineReviewedEventLinksPullRequest(href: $href)'; } 
 }
