// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows {const PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows._(this.value);

factory PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows.fromJson(String json) { return switch (json) {
  'restricted' => restricted,
  'unrestricted' => unrestricted,
  _ => PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows._(json),
}; }

static const PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows restricted = PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows._('restricted');

static const PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows unrestricted = PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows._('unrestricted');

static const List<PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows> values = [restricted, unrestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows($value)'; } 
 }
final class PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows {const PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows._(this.value);

factory PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows.fromJson(String json) { return switch (json) {
  'restricted' => restricted,
  'unrestricted' => unrestricted,
  _ => PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows._(json),
}; }

static const PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows restricted = PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows._('restricted');

static const PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows unrestricted = PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows._('unrestricted');

static const List<PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows> values = [restricted, unrestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows($value)'; } 
 }
/// The set of functionalities that the platform can restrict on the FinancialAccount.
final class PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions {const PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions({this.inboundFlows, this.outboundFlows, });

factory PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions(
  inboundFlows: json['inbound_flows'] != null ? PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows.fromJson(json['inbound_flows'] as String) : null,
  outboundFlows: json['outbound_flows'] != null ? PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows.fromJson(json['outbound_flows'] as String) : null,
); }

final PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows? inboundFlows;

final PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows? outboundFlows;

Map<String, dynamic> toJson() { return {
  if (inboundFlows != null) 'inbound_flows': inboundFlows?.toJson(),
  if (outboundFlows != null) 'outbound_flows': outboundFlows?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'inbound_flows', 'outbound_flows'}.contains(key)); } 
PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions copyWith({PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsInboundFlows Function()? inboundFlows, PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictionsOutboundFlows Function()? outboundFlows, }) { return PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions(
  inboundFlows: inboundFlows != null ? inboundFlows() : this.inboundFlows,
  outboundFlows: outboundFlows != null ? outboundFlows() : this.outboundFlows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions &&
          inboundFlows == other.inboundFlows &&
          outboundFlows == other.outboundFlows; } 
@override int get hashCode { return Object.hash(inboundFlows, outboundFlows); } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestPlatformRestrictions(inboundFlows: $inboundFlows, outboundFlows: $outboundFlows)'; } 
 }
