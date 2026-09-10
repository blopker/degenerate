// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 {const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._(this.value);

factory DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._(json),
};}

static const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 $empty = DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._('');

static const List<DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2($value)';}
}

@immutable
final class DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment {
  const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment({this.string = const Omittable.absent(),
this.deleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment._({required this.rawValue, required this.string,
required this.deleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2,});
  factory DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment.fromJson(Object? json) => DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
deleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2: parseAnyOfVariant<DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2>(json, (value) => DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2> deleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || deleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (deleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.isPresent) deleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DeleteSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment(${toJson()})';
}
