// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InsightsGetTimeStatsByActorActorType {const InsightsGetTimeStatsByActorActorType._(this.value);

factory InsightsGetTimeStatsByActorActorType.fromJson(String json) { return switch (json) {
  'installation' => installation,
  'classic_pat' => classicPat,
  'fine_grained_pat' => fineGrainedPat,
  'oauth_app' => oauthApp,
  'github_app_user_to_server' => githubAppUserToServer,
  _ => InsightsGetTimeStatsByActorActorType._(json),
}; }

static const InsightsGetTimeStatsByActorActorType installation = InsightsGetTimeStatsByActorActorType._('installation');

static const InsightsGetTimeStatsByActorActorType classicPat = InsightsGetTimeStatsByActorActorType._('classic_pat');

static const InsightsGetTimeStatsByActorActorType fineGrainedPat = InsightsGetTimeStatsByActorActorType._('fine_grained_pat');

static const InsightsGetTimeStatsByActorActorType oauthApp = InsightsGetTimeStatsByActorActorType._('oauth_app');

static const InsightsGetTimeStatsByActorActorType githubAppUserToServer = InsightsGetTimeStatsByActorActorType._('github_app_user_to_server');

static const List<InsightsGetTimeStatsByActorActorType> values = [installation, classicPat, fineGrainedPat, oauthApp, githubAppUserToServer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsGetTimeStatsByActorActorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsGetTimeStatsByActorActorType($value)'; } 
 }
