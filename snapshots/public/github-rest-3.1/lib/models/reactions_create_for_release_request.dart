// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The [reaction type](https://docs.github.com/rest/reactions/reactions#about-reactions) to add to the release.
@immutable final class ReactionsCreateForReleaseRequestContent {const ReactionsCreateForReleaseRequestContent._(this.value);

factory ReactionsCreateForReleaseRequestContent.fromJson(String json) { return switch (json) {
  '+1' => plus1,
  'laugh' => laugh,
  'heart' => heart,
  'hooray' => hooray,
  'rocket' => rocket,
  'eyes' => eyes,
  _ => ReactionsCreateForReleaseRequestContent._(json),
}; }

static const ReactionsCreateForReleaseRequestContent plus1 = ReactionsCreateForReleaseRequestContent._('+1');

static const ReactionsCreateForReleaseRequestContent laugh = ReactionsCreateForReleaseRequestContent._('laugh');

static const ReactionsCreateForReleaseRequestContent heart = ReactionsCreateForReleaseRequestContent._('heart');

static const ReactionsCreateForReleaseRequestContent hooray = ReactionsCreateForReleaseRequestContent._('hooray');

static const ReactionsCreateForReleaseRequestContent rocket = ReactionsCreateForReleaseRequestContent._('rocket');

static const ReactionsCreateForReleaseRequestContent eyes = ReactionsCreateForReleaseRequestContent._('eyes');

static const List<ReactionsCreateForReleaseRequestContent> values = [plus1, laugh, heart, hooray, rocket, eyes];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReactionsCreateForReleaseRequestContent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReactionsCreateForReleaseRequestContent($value)'; } 
 }
@immutable final class ReactionsCreateForReleaseRequest {const ReactionsCreateForReleaseRequest({required this.content});

factory ReactionsCreateForReleaseRequest.fromJson(Map<String, dynamic> json) { return ReactionsCreateForReleaseRequest(
  content: ReactionsCreateForReleaseRequestContent.fromJson(json['content'] as String),
); }

/// The [reaction type](https://docs.github.com/rest/reactions/reactions#about-reactions) to add to the release.
final ReactionsCreateForReleaseRequestContent content;

Map<String, dynamic> toJson() { return {
  'content': content.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content'); } 
ReactionsCreateForReleaseRequest copyWith({ReactionsCreateForReleaseRequestContent? content}) { return ReactionsCreateForReleaseRequest(
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReactionsCreateForReleaseRequest &&
          content == other.content; } 
@override int get hashCode { return content.hashCode; } 
@override String toString() { return 'ReactionsCreateForReleaseRequest(content: $content)'; } 
 }
