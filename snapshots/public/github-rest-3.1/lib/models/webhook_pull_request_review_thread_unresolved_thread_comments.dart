// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_thread_unresolved_thread_comments_links.dart';import 'webhook_pull_request_review_thread_unresolved_thread_comments_reactions.dart';import 'webhook_pull_request_review_thread_unresolved_thread_comments_user.dart';/// How the author is associated with the repository.
@immutable final class WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation {const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._(this.value);

factory WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation.fromJson(String json) { return switch (json) {
  'COLLABORATOR' => collaborator,
  'CONTRIBUTOR' => contributor,
  'FIRST_TIMER' => firstTimer,
  'FIRST_TIME_CONTRIBUTOR' => firstTimeContributor,
  'MANNEQUIN' => mannequin,
  'MEMBER' => member,
  'NONE' => none,
  'OWNER' => owner,
  _ => WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._(json),
}; }

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation collaborator = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('COLLABORATOR');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation contributor = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('CONTRIBUTOR');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation firstTimer = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('FIRST_TIMER');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation firstTimeContributor = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('FIRST_TIME_CONTRIBUTOR');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation mannequin = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('MANNEQUIN');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation member = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('MEMBER');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation none = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('NONE');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation owner = WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation._('OWNER');

static const List<WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation> values = [collaborator, contributor, firstTimer, firstTimeContributor, mannequin, member, none, owner];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation($value)'; } 
 }
/// The side of the first line of the range for a multi-line comment.
@immutable final class WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide {const WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide._(this.value);

factory WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide.fromJson(String json) { return switch (json) {
  'LEFT' => left,
  'RIGHT' => right,
  _ => WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide._(json),
}; }

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide left = WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide._('LEFT');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide right = WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide._('RIGHT');

static const List<WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide> values = [left, right];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide($value)'; } 
 }
/// The side of the first line of the range for a multi-line comment.
@immutable final class WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide {const WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide._(this.value);

factory WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide.fromJson(String json) { return switch (json) {
  'LEFT' => left,
  'RIGHT' => right,
  'null' => $null,
  _ => WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide._(json),
}; }

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide left = WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide._('LEFT');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide right = WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide._('RIGHT');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide $null = WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide._('null');

static const List<WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide> values = [left, right, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide($value)'; } 
 }
/// The level at which the comment is targeted, can be a diff line or a file.
@immutable final class WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType {const WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType._(this.value);

factory WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType.fromJson(String json) { return switch (json) {
  'line' => line,
  'file' => file,
  _ => WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType._(json),
}; }

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType line = WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType._('line');

static const WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType file = WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType._('file');

static const List<WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType> values = [line, file];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType($value)'; } 
 }
/// The [comment](https://docs.github.com/rest/pulls/comments#get-a-review-comment-for-a-pull-request) itself.
@immutable final class WebhookPullRequestReviewThreadUnresolvedThreadComments {const WebhookPullRequestReviewThreadUnresolvedThreadComments({required this.links, required this.authorAssociation, required this.body, required this.commitId, required this.createdAt, required this.diffHunk, required this.htmlUrl, required this.id, required this.line, required this.nodeId, required this.originalCommitId, required this.originalLine, required this.originalPosition, required this.originalStartLine, required this.path, required this.position, required this.pullRequestReviewId, required this.pullRequestUrl, required this.reactions, required this.side, required this.startLine, required this.updatedAt, required this.url, required this.user, this.inReplyToId, this.startSide = WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide.right, this.subjectType, });

factory WebhookPullRequestReviewThreadUnresolvedThreadComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedThreadComments(
  links: WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinks.fromJson(json['_links'] as Map<String, dynamic>),
  authorAssociation: WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation.fromJson(json['author_association'] as String),
  body: json['body'] as String,
  commitId: json['commit_id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  diffHunk: json['diff_hunk'] as String,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  inReplyToId: json['in_reply_to_id'] != null ? (json['in_reply_to_id'] as num).toInt() : null,
  line: json['line'] != null ? (json['line'] as num).toInt() : null,
  nodeId: json['node_id'] as String,
  originalCommitId: json['original_commit_id'] as String,
  originalLine: (json['original_line'] as num).toInt(),
  originalPosition: (json['original_position'] as num).toInt(),
  originalStartLine: json['original_start_line'] != null ? (json['original_start_line'] as num).toInt() : null,
  path: json['path'] as String,
  position: json['position'] != null ? (json['position'] as num).toInt() : null,
  pullRequestReviewId: json['pull_request_review_id'] != null ? (json['pull_request_review_id'] as num).toInt() : null,
  pullRequestUrl: Uri.parse(json['pull_request_url'] as String),
  reactions: WebhookPullRequestReviewThreadUnresolvedThreadCommentsReactions.fromJson(json['reactions'] as Map<String, dynamic>),
  side: WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide.fromJson(json['side'] as String),
  startLine: json['start_line'] != null ? (json['start_line'] as num).toInt() : null,
  startSide: json['start_side'] != null ? WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide.fromJson(json['start_side'] as String) : null,
  subjectType: json['subject_type'] != null ? WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType.fromJson(json['subject_type'] as String) : null,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
  user: json['user'] != null ? WebhookPullRequestReviewThreadUnresolvedThreadCommentsUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinks links;

/// How the author is associated with the repository.
final WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation authorAssociation;

/// The text of the comment.
final String body;

/// The SHA of the commit to which the comment applies.
final String commitId;

final DateTime createdAt;

/// The diff of the line that the comment refers to.
final String diffHunk;

/// HTML URL for the pull request review comment.
final Uri htmlUrl;

/// The ID of the pull request review comment.
final int id;

/// The comment ID to reply to.
final int? inReplyToId;

/// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
final int? line;

/// The node ID of the pull request review comment.
final String nodeId;

/// The SHA of the original commit to which the comment applies.
final String originalCommitId;

/// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
final int originalLine;

/// The index of the original line in the diff to which the comment applies.
final int originalPosition;

/// The first line of the range for a multi-line comment.
final int? originalStartLine;

/// The relative path of the file to which the comment applies.
final String path;

/// The line index in the diff to which the comment applies.
final int? position;

/// The ID of the pull request review to which the comment belongs.
final int? pullRequestReviewId;

/// URL for the pull request that the review comment belongs to.
final Uri pullRequestUrl;

final WebhookPullRequestReviewThreadUnresolvedThreadCommentsReactions reactions;

/// The side of the first line of the range for a multi-line comment.
final WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide side;

/// The first line of the range for a multi-line comment.
final int? startLine;

/// The side of the first line of the range for a multi-line comment.
final WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide? startSide;

/// The level at which the comment is targeted, can be a diff line or a file.
final WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType? subjectType;

final DateTime updatedAt;

/// URL for the pull request review comment
final Uri url;

final WebhookPullRequestReviewThreadUnresolvedThreadCommentsUser? user;

Map<String, dynamic> toJson() { return {
  '_links': links.toJson(),
  'author_association': authorAssociation.toJson(),
  'body': body,
  'commit_id': commitId,
  'created_at': createdAt.toIso8601String(),
  'diff_hunk': diffHunk,
  'html_url': htmlUrl.toString(),
  'id': id,
  'in_reply_to_id': ?inReplyToId,
  'line': ?line,
  'node_id': nodeId,
  'original_commit_id': originalCommitId,
  'original_line': originalLine,
  'original_position': originalPosition,
  'original_start_line': ?originalStartLine,
  'path': path,
  'position': ?position,
  'pull_request_review_id': ?pullRequestReviewId,
  'pull_request_url': pullRequestUrl.toString(),
  'reactions': reactions.toJson(),
  'side': side.toJson(),
  'start_line': ?startLine,
  if (startSide != null) 'start_side': startSide?.toJson(),
  if (subjectType != null) 'subject_type': subjectType?.toJson(),
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('_links') &&
      json.containsKey('author_association') &&
      json.containsKey('body') && json['body'] is String &&
      json.containsKey('commit_id') && json['commit_id'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('diff_hunk') && json['diff_hunk'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('line') && json['line'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('original_commit_id') && json['original_commit_id'] is String &&
      json.containsKey('original_line') && json['original_line'] is num &&
      json.containsKey('original_position') && json['original_position'] is num &&
      json.containsKey('original_start_line') && json['original_start_line'] is num &&
      json.containsKey('path') && json['path'] is String &&
      json.containsKey('position') && json['position'] is num &&
      json.containsKey('pull_request_review_id') && json['pull_request_review_id'] is num &&
      json.containsKey('pull_request_url') && json['pull_request_url'] is String &&
      json.containsKey('reactions') &&
      json.containsKey('side') &&
      json.containsKey('start_line') && json['start_line'] is num &&
      json.containsKey('start_side') &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('user'); } 
WebhookPullRequestReviewThreadUnresolvedThreadComments copyWith({WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinks? links, WebhookPullRequestReviewThreadUnresolvedThreadCommentsAuthorAssociation? authorAssociation, String? body, String? commitId, DateTime? createdAt, String? diffHunk, Uri? htmlUrl, int? id, int Function()? inReplyToId, int? Function()? line, String? nodeId, String? originalCommitId, int? originalLine, int? originalPosition, int? Function()? originalStartLine, String? path, int? Function()? position, int? Function()? pullRequestReviewId, Uri? pullRequestUrl, WebhookPullRequestReviewThreadUnresolvedThreadCommentsReactions? reactions, WebhookPullRequestReviewThreadUnresolvedThreadCommentsSide? side, int? Function()? startLine, WebhookPullRequestReviewThreadUnresolvedThreadCommentsStartSide? Function()? startSide, WebhookPullRequestReviewThreadUnresolvedThreadCommentsSubjectType Function()? subjectType, DateTime? updatedAt, Uri? url, WebhookPullRequestReviewThreadUnresolvedThreadCommentsUser? Function()? user, }) { return WebhookPullRequestReviewThreadUnresolvedThreadComments(
  links: links ?? this.links,
  authorAssociation: authorAssociation ?? this.authorAssociation,
  body: body ?? this.body,
  commitId: commitId ?? this.commitId,
  createdAt: createdAt ?? this.createdAt,
  diffHunk: diffHunk ?? this.diffHunk,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  inReplyToId: inReplyToId != null ? inReplyToId() : this.inReplyToId,
  line: line != null ? line() : this.line,
  nodeId: nodeId ?? this.nodeId,
  originalCommitId: originalCommitId ?? this.originalCommitId,
  originalLine: originalLine ?? this.originalLine,
  originalPosition: originalPosition ?? this.originalPosition,
  originalStartLine: originalStartLine != null ? originalStartLine() : this.originalStartLine,
  path: path ?? this.path,
  position: position != null ? position() : this.position,
  pullRequestReviewId: pullRequestReviewId != null ? pullRequestReviewId() : this.pullRequestReviewId,
  pullRequestUrl: pullRequestUrl ?? this.pullRequestUrl,
  reactions: reactions ?? this.reactions,
  side: side ?? this.side,
  startLine: startLine != null ? startLine() : this.startLine,
  startSide: startSide != null ? startSide() : this.startSide,
  subjectType: subjectType != null ? subjectType() : this.subjectType,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedThreadComments &&
          links == other.links &&
          authorAssociation == other.authorAssociation &&
          body == other.body &&
          commitId == other.commitId &&
          createdAt == other.createdAt &&
          diffHunk == other.diffHunk &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          inReplyToId == other.inReplyToId &&
          line == other.line &&
          nodeId == other.nodeId &&
          originalCommitId == other.originalCommitId &&
          originalLine == other.originalLine &&
          originalPosition == other.originalPosition &&
          originalStartLine == other.originalStartLine &&
          path == other.path &&
          position == other.position &&
          pullRequestReviewId == other.pullRequestReviewId &&
          pullRequestUrl == other.pullRequestUrl &&
          reactions == other.reactions &&
          side == other.side &&
          startLine == other.startLine &&
          startSide == other.startSide &&
          subjectType == other.subjectType &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          user == other.user; } 
@override int get hashCode { return Object.hashAll([links, authorAssociation, body, commitId, createdAt, diffHunk, htmlUrl, id, inReplyToId, line, nodeId, originalCommitId, originalLine, originalPosition, originalStartLine, path, position, pullRequestReviewId, pullRequestUrl, reactions, side, startLine, startSide, subjectType, updatedAt, url, user]); } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadComments(links: $links, authorAssociation: $authorAssociation, body: $body, commitId: $commitId, createdAt: $createdAt, diffHunk: $diffHunk, htmlUrl: $htmlUrl, id: $id, inReplyToId: $inReplyToId, line: $line, nodeId: $nodeId, originalCommitId: $originalCommitId, originalLine: $originalLine, originalPosition: $originalPosition, originalStartLine: $originalStartLine, path: $path, position: $position, pullRequestReviewId: $pullRequestReviewId, pullRequestUrl: $pullRequestUrl, reactions: $reactions, side: $side, startLine: $startLine, startSide: $startSide, subjectType: $subjectType, updatedAt: $updatedAt, url: $url, user: $user)'; } 
 }
