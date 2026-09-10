// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostFileLinksLinkRequestExpiresAtVariant1 {const PostFileLinksLinkRequestExpiresAtVariant1._(this.value);

factory PostFileLinksLinkRequestExpiresAtVariant1.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostFileLinksLinkRequestExpiresAtVariant1._(json),
};}

static const PostFileLinksLinkRequestExpiresAtVariant1 now = PostFileLinksLinkRequestExpiresAtVariant1._('now');

static const List<PostFileLinksLinkRequestExpiresAtVariant1> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostFileLinksLinkRequestExpiresAtVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostFileLinksLinkRequestExpiresAtVariant1($value)';}
}
@immutable final class PostFileLinksLinkRequestExpiresAtVariant3 {const PostFileLinksLinkRequestExpiresAtVariant3._(this.value);

factory PostFileLinksLinkRequestExpiresAtVariant3.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostFileLinksLinkRequestExpiresAtVariant3._(json),
};}

static const PostFileLinksLinkRequestExpiresAtVariant3 $empty = PostFileLinksLinkRequestExpiresAtVariant3._('');

static const List<PostFileLinksLinkRequestExpiresAtVariant3> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostFileLinksLinkRequestExpiresAtVariant3 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostFileLinksLinkRequestExpiresAtVariant3($value)';}
}
/// A future timestamp after which the link will no longer be usable, or `now` to expire the link immediately.
@immutable
final class PostFileLinksLinkRequestExpiresAt {
  const PostFileLinksLinkRequestExpiresAt({this.postFileLinksLinkRequestExpiresAtVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),
this.postFileLinksLinkRequestExpiresAtVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostFileLinksLinkRequestExpiresAt._({required this.rawValue, required this.postFileLinksLinkRequestExpiresAtVariant1,
required this.$int,
required this.postFileLinksLinkRequestExpiresAtVariant3,});
  factory PostFileLinksLinkRequestExpiresAt.fromJson(Object? json) => PostFileLinksLinkRequestExpiresAt._(
    rawValue: Omittable(json),
    postFileLinksLinkRequestExpiresAtVariant1: parseAnyOfVariant<PostFileLinksLinkRequestExpiresAtVariant1>(json, (value) => PostFileLinksLinkRequestExpiresAtVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postFileLinksLinkRequestExpiresAtVariant3: parseAnyOfVariant<PostFileLinksLinkRequestExpiresAtVariant3>(json, (value) => PostFileLinksLinkRequestExpiresAtVariant3.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostFileLinksLinkRequestExpiresAtVariant1> postFileLinksLinkRequestExpiresAtVariant1;
final Omittable<int> $int;
final Omittable<PostFileLinksLinkRequestExpiresAtVariant3> postFileLinksLinkRequestExpiresAtVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => postFileLinksLinkRequestExpiresAtVariant1.isPresent || $int.isPresent || postFileLinksLinkRequestExpiresAtVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postFileLinksLinkRequestExpiresAtVariant1.isPresent) postFileLinksLinkRequestExpiresAtVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
if (postFileLinksLinkRequestExpiresAtVariant3.isPresent) postFileLinksLinkRequestExpiresAtVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostFileLinksLinkRequestExpiresAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostFileLinksLinkRequestExpiresAt(${toJson()})';
}
