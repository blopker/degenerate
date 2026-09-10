// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSourcesRequestMandateAmountVariant2 {const PostSourcesRequestMandateAmountVariant2._(this.value);

factory PostSourcesRequestMandateAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSourcesRequestMandateAmountVariant2._(json),
};}

static const PostSourcesRequestMandateAmountVariant2 $empty = PostSourcesRequestMandateAmountVariant2._('');

static const List<PostSourcesRequestMandateAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSourcesRequestMandateAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSourcesRequestMandateAmountVariant2($value)';}
}

@immutable
final class PostSourcesRequestMandateAmount {
  const PostSourcesRequestMandateAmount({this.$int = const Omittable.absent(),
this.postSourcesRequestMandateAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSourcesRequestMandateAmount._({required this.rawValue, required this.$int,
required this.postSourcesRequestMandateAmountVariant2,});
  factory PostSourcesRequestMandateAmount.fromJson(Object? json) => PostSourcesRequestMandateAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSourcesRequestMandateAmountVariant2: parseAnyOfVariant<PostSourcesRequestMandateAmountVariant2>(json, (value) => PostSourcesRequestMandateAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSourcesRequestMandateAmountVariant2> postSourcesRequestMandateAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSourcesRequestMandateAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSourcesRequestMandateAmountVariant2.isPresent) postSourcesRequestMandateAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSourcesRequestMandateAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSourcesRequestMandateAmount(${toJson()})';
}
