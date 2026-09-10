// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2($value)';}
}

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment {
  const PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment({this.string = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment._({required this.rawValue, required this.string,
required this.postSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2> postSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment(${toJson()})';
}
