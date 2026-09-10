// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2 {const PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2 $empty = PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestPhasesItemsTaxRates {
  const PostSubscriptionSchedulesRequestPhasesItemsTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestPhasesItemsTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2,});
  factory PostSubscriptionSchedulesRequestPhasesItemsTaxRates.fromJson(Object? json) => PostSubscriptionSchedulesRequestPhasesItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2>(json, (value) => PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2> postSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2.isPresent) postSubscriptionSchedulesRequestPhasesItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestPhasesItemsTaxRates(${toJson()})';
}
