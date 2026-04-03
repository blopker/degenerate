// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a 'discussion_body' secret scanning location type. This location type shows that a secret was detected in the body of a discussion.
@immutable final class SecretScanningLocationDiscussionBody {const SecretScanningLocationDiscussionBody({required this.discussionBodyUrl});

factory SecretScanningLocationDiscussionBody.fromJson(Map<String, dynamic> json) { return SecretScanningLocationDiscussionBody(
  discussionBodyUrl: Uri.parse(json['discussion_body_url'] as String),
); }

/// The URL to the discussion where the secret was detected.
final Uri discussionBodyUrl;

Map<String, dynamic> toJson() { return {
  'discussion_body_url': discussionBodyUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('discussion_body_url') && json['discussion_body_url'] is String; } 
SecretScanningLocationDiscussionBody copyWith({Uri? discussionBodyUrl}) { return SecretScanningLocationDiscussionBody(
  discussionBodyUrl: discussionBodyUrl ?? this.discussionBodyUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningLocationDiscussionBody &&
          discussionBodyUrl == other.discussionBodyUrl; } 
@override int get hashCode { return discussionBodyUrl.hashCode; } 
@override String toString() { return 'SecretScanningLocationDiscussionBody(discussionBodyUrl: $discussionBodyUrl)'; } 
 }
