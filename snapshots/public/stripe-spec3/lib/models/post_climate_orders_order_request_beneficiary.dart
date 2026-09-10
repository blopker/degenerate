// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'beneficiary_params.dart';@immutable final class PostClimateOrdersOrderRequestBeneficiaryVariant2 {const PostClimateOrdersOrderRequestBeneficiaryVariant2._(this.value);

factory PostClimateOrdersOrderRequestBeneficiaryVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostClimateOrdersOrderRequestBeneficiaryVariant2._(json),
};}

static const PostClimateOrdersOrderRequestBeneficiaryVariant2 $empty = PostClimateOrdersOrderRequestBeneficiaryVariant2._('');

static const List<PostClimateOrdersOrderRequestBeneficiaryVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostClimateOrdersOrderRequestBeneficiaryVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostClimateOrdersOrderRequestBeneficiaryVariant2($value)';}
}
/// Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
@immutable
final class PostClimateOrdersOrderRequestBeneficiary {
  const PostClimateOrdersOrderRequestBeneficiary({this.beneficiaryParams = const Omittable.absent(),
this.postClimateOrdersOrderRequestBeneficiaryVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostClimateOrdersOrderRequestBeneficiary._({required this.rawValue, required this.beneficiaryParams,
required this.postClimateOrdersOrderRequestBeneficiaryVariant2,});
  factory PostClimateOrdersOrderRequestBeneficiary.fromJson(Object? json) => PostClimateOrdersOrderRequestBeneficiary._(
    rawValue: Omittable(json),
    beneficiaryParams: parseAnyOfVariant<BeneficiaryParams>(json, (value) => BeneficiaryParams.fromJson(value! as Map<String, dynamic>)),
postClimateOrdersOrderRequestBeneficiaryVariant2: parseAnyOfVariant<PostClimateOrdersOrderRequestBeneficiaryVariant2>(json, (value) => PostClimateOrdersOrderRequestBeneficiaryVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BeneficiaryParams> beneficiaryParams;
final Omittable<PostClimateOrdersOrderRequestBeneficiaryVariant2> postClimateOrdersOrderRequestBeneficiaryVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => beneficiaryParams.isPresent || postClimateOrdersOrderRequestBeneficiaryVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (beneficiaryParams.isPresent) beneficiaryParams.value?.toJson(),
if (postClimateOrdersOrderRequestBeneficiaryVariant2.isPresent) postClimateOrdersOrderRequestBeneficiaryVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostClimateOrdersOrderRequestBeneficiary && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostClimateOrdersOrderRequestBeneficiary(${toJson()})';
}
