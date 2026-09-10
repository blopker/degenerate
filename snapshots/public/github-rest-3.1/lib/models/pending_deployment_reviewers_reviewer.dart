// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'simple_user.dart';import 'team.dart';
@immutable
final class PendingDeploymentReviewersReviewer {
  const PendingDeploymentReviewersReviewer({this.simpleUser = const Omittable.absent(),
this.team = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PendingDeploymentReviewersReviewer._({required this.rawValue, required this.simpleUser,
required this.team,});
  factory PendingDeploymentReviewersReviewer.fromJson(Object? json) => PendingDeploymentReviewersReviewer._(
    rawValue: Omittable(json),
    simpleUser: parseAnyOfVariant<SimpleUser>(json, (value) => SimpleUser.fromJson(value! as Map<String, dynamic>)),
team: parseAnyOfVariant<Team>(json, (value) => Team.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SimpleUser> simpleUser;
final Omittable<Team> team;

  /// Whether at least one known variant matched.
  bool get isValid => simpleUser.isPresent || team.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (simpleUser.isPresent) simpleUser.value?.toJson(),
if (team.isPresent) team.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PendingDeploymentReviewersReviewer && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PendingDeploymentReviewersReviewer(${toJson()})';
}
