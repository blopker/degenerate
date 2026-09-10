// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'interaction_limit_response.dart';import 'interactions_get_restrictions_for_org_response_variant2.dart';
@immutable
final class InteractionsGetRestrictionsForOrgResponse {
  const InteractionsGetRestrictionsForOrgResponse({this.interactionLimitResponse = const Omittable.absent(),
this.interactionsGetRestrictionsForOrgResponseVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InteractionsGetRestrictionsForOrgResponse._({required this.rawValue, required this.interactionLimitResponse,
required this.interactionsGetRestrictionsForOrgResponseVariant2,});
  factory InteractionsGetRestrictionsForOrgResponse.fromJson(Object? json) => InteractionsGetRestrictionsForOrgResponse._(
    rawValue: Omittable(json),
    interactionLimitResponse: parseAnyOfVariant<InteractionLimitResponse>(json, (value) => InteractionLimitResponse.fromJson(value! as Map<String, dynamic>)),
interactionsGetRestrictionsForOrgResponseVariant2: parseAnyOfVariant<InteractionsGetRestrictionsForOrgResponseVariant2>(json, (value) => InteractionsGetRestrictionsForOrgResponseVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InteractionLimitResponse> interactionLimitResponse;
final Omittable<InteractionsGetRestrictionsForOrgResponseVariant2> interactionsGetRestrictionsForOrgResponseVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => interactionLimitResponse.isPresent || interactionsGetRestrictionsForOrgResponseVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (interactionLimitResponse.isPresent) interactionLimitResponse.value?.toJson(),
if (interactionsGetRestrictionsForOrgResponseVariant2.isPresent) interactionsGetRestrictionsForOrgResponseVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InteractionsGetRestrictionsForOrgResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InteractionsGetRestrictionsForOrgResponse(${toJson()})';
}
