// GENERATED CODE - DO NOT MODIFY BY HAND

final class InsightsGetSummaryStatsByActorActorType {const InsightsGetSummaryStatsByActorActorType._(this.value);

factory InsightsGetSummaryStatsByActorActorType.fromJson(String json) { return switch (json) {
  'installation' => installation,
  'classic_pat' => classicPat,
  'fine_grained_pat' => fineGrainedPat,
  'oauth_app' => oauthApp,
  'github_app_user_to_server' => githubAppUserToServer,
  _ => InsightsGetSummaryStatsByActorActorType._(json),
}; }

static const InsightsGetSummaryStatsByActorActorType installation = InsightsGetSummaryStatsByActorActorType._('installation');

static const InsightsGetSummaryStatsByActorActorType classicPat = InsightsGetSummaryStatsByActorActorType._('classic_pat');

static const InsightsGetSummaryStatsByActorActorType fineGrainedPat = InsightsGetSummaryStatsByActorActorType._('fine_grained_pat');

static const InsightsGetSummaryStatsByActorActorType oauthApp = InsightsGetSummaryStatsByActorActorType._('oauth_app');

static const InsightsGetSummaryStatsByActorActorType githubAppUserToServer = InsightsGetSummaryStatsByActorActorType._('github_app_user_to_server');

static const List<InsightsGetSummaryStatsByActorActorType> values = [installation, classicPat, fineGrainedPat, oauthApp, githubAppUserToServer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsGetSummaryStatsByActorActorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsGetSummaryStatsByActorActorType($value)'; } 
 }
