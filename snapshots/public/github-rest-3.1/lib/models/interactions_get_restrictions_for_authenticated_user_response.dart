// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'interaction_limit_response.dart';import 'interactions_get_restrictions_for_authenticated_user_response_variant2.dart';
@immutable
final class InteractionsGetRestrictionsForAuthenticatedUserResponse {
  const InteractionsGetRestrictionsForAuthenticatedUserResponse({this.interactionLimitResponse = const Omittable.absent(),
this.interactionsGetRestrictionsForAuthenticatedUserResponseVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InteractionsGetRestrictionsForAuthenticatedUserResponse._({required this.rawValue, required this.interactionLimitResponse,
required this.interactionsGetRestrictionsForAuthenticatedUserResponseVariant2,});
  factory InteractionsGetRestrictionsForAuthenticatedUserResponse.fromJson(Object? json) => InteractionsGetRestrictionsForAuthenticatedUserResponse._(
    rawValue: Omittable(json),
    interactionLimitResponse: parseAnyOfVariant<InteractionLimitResponse>(json, (value) => InteractionLimitResponse.fromJson(value! as Map<String, dynamic>)),
interactionsGetRestrictionsForAuthenticatedUserResponseVariant2: parseAnyOfVariant<InteractionsGetRestrictionsForAuthenticatedUserResponseVariant2>(json, (value) => InteractionsGetRestrictionsForAuthenticatedUserResponseVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InteractionLimitResponse> interactionLimitResponse;
final Omittable<InteractionsGetRestrictionsForAuthenticatedUserResponseVariant2> interactionsGetRestrictionsForAuthenticatedUserResponseVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => interactionLimitResponse.isPresent || interactionsGetRestrictionsForAuthenticatedUserResponseVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (interactionLimitResponse.isPresent) interactionLimitResponse.value?.toJson(),
if (interactionsGetRestrictionsForAuthenticatedUserResponseVariant2.isPresent) interactionsGetRestrictionsForAuthenticatedUserResponseVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InteractionsGetRestrictionsForAuthenticatedUserResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InteractionsGetRestrictionsForAuthenticatedUserResponse(${toJson()})';
}
