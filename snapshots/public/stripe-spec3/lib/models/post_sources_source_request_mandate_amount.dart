// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSourcesSourceRequestMandateAmountVariant2 {const PostSourcesSourceRequestMandateAmountVariant2._(this.value);

factory PostSourcesSourceRequestMandateAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSourcesSourceRequestMandateAmountVariant2._(json),
};}

static const PostSourcesSourceRequestMandateAmountVariant2 $empty = PostSourcesSourceRequestMandateAmountVariant2._('');

static const List<PostSourcesSourceRequestMandateAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSourcesSourceRequestMandateAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSourcesSourceRequestMandateAmountVariant2($value)';}
}

@immutable
final class PostSourcesSourceRequestMandateAmount {
  const PostSourcesSourceRequestMandateAmount({this.$int = const Omittable.absent(),
this.postSourcesSourceRequestMandateAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSourcesSourceRequestMandateAmount._({required this.rawValue, required this.$int,
required this.postSourcesSourceRequestMandateAmountVariant2,});
  factory PostSourcesSourceRequestMandateAmount.fromJson(Object? json) => PostSourcesSourceRequestMandateAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSourcesSourceRequestMandateAmountVariant2: parseAnyOfVariant<PostSourcesSourceRequestMandateAmountVariant2>(json, (value) => PostSourcesSourceRequestMandateAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSourcesSourceRequestMandateAmountVariant2> postSourcesSourceRequestMandateAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSourcesSourceRequestMandateAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSourcesSourceRequestMandateAmountVariant2.isPresent) postSourcesSourceRequestMandateAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSourcesSourceRequestMandateAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSourcesSourceRequestMandateAmount(${toJson()})';
}
