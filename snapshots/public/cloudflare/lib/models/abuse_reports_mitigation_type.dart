// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of mitigation
final class AbuseReportsMitigationType {const AbuseReportsMitigationType._(this.value);

factory AbuseReportsMitigationType.fromJson(String json) { return switch (json) {
  'legal_block' => legalBlock,
  'phishing_interstitial' => phishingInterstitial,
  'network_block' => networkBlock,
  'rate_limit_cache' => rateLimitCache,
  'account_suspend' => accountSuspend,
  'redirect_video_stream' => redirectVideoStream,
  _ => AbuseReportsMitigationType._(json),
}; }

static const AbuseReportsMitigationType legalBlock = AbuseReportsMitigationType._('legal_block');

static const AbuseReportsMitigationType phishingInterstitial = AbuseReportsMitigationType._('phishing_interstitial');

static const AbuseReportsMitigationType networkBlock = AbuseReportsMitigationType._('network_block');

static const AbuseReportsMitigationType rateLimitCache = AbuseReportsMitigationType._('rate_limit_cache');

static const AbuseReportsMitigationType accountSuspend = AbuseReportsMitigationType._('account_suspend');

static const AbuseReportsMitigationType redirectVideoStream = AbuseReportsMitigationType._('redirect_video_stream');

static const List<AbuseReportsMitigationType> values = [legalBlock, phishingInterstitial, networkBlock, rateLimitCache, accountSuspend, redirectVideoStream];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsMitigationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsMitigationType($value)'; } 
 }
