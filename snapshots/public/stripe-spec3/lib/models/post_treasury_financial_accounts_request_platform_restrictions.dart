// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows {const PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows._(this.value);

factory PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows.fromJson(String json) { return switch (json) {
  'restricted' => restricted,
  'unrestricted' => unrestricted,
  _ => PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows._(json),
}; }

static const PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows restricted = PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows._('restricted');

static const PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows unrestricted = PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows._('unrestricted');

static const List<PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows> values = [restricted, unrestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows($value)'; } 
 }
final class PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows {const PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows._(this.value);

factory PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows.fromJson(String json) { return switch (json) {
  'restricted' => restricted,
  'unrestricted' => unrestricted,
  _ => PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows._(json),
}; }

static const PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows restricted = PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows._('restricted');

static const PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows unrestricted = PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows._('unrestricted');

static const List<PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows> values = [restricted, unrestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows($value)'; } 
 }
/// The set of functionalities that the platform can restrict on the FinancialAccount.
final class PostTreasuryFinancialAccountsRequestPlatformRestrictions {const PostTreasuryFinancialAccountsRequestPlatformRestrictions({this.inboundFlows, this.outboundFlows, });

factory PostTreasuryFinancialAccountsRequestPlatformRestrictions.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestPlatformRestrictions(
  inboundFlows: json['inbound_flows'] != null ? PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows.fromJson(json['inbound_flows'] as String) : null,
  outboundFlows: json['outbound_flows'] != null ? PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows.fromJson(json['outbound_flows'] as String) : null,
); }

final PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows? inboundFlows;

final PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows? outboundFlows;

Map<String, dynamic> toJson() { return {
  if (inboundFlows != null) 'inbound_flows': inboundFlows?.toJson(),
  if (outboundFlows != null) 'outbound_flows': outboundFlows?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'inbound_flows', 'outbound_flows'}.contains(key)); } 
PostTreasuryFinancialAccountsRequestPlatformRestrictions copyWith({PostTreasuryFinancialAccountsRequestPlatformRestrictionsInboundFlows Function()? inboundFlows, PostTreasuryFinancialAccountsRequestPlatformRestrictionsOutboundFlows Function()? outboundFlows, }) { return PostTreasuryFinancialAccountsRequestPlatformRestrictions(
  inboundFlows: inboundFlows != null ? inboundFlows() : this.inboundFlows,
  outboundFlows: outboundFlows != null ? outboundFlows() : this.outboundFlows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestPlatformRestrictions &&
          inboundFlows == other.inboundFlows &&
          outboundFlows == other.outboundFlows; } 
@override int get hashCode { return Object.hash(inboundFlows, outboundFlows); } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestPlatformRestrictions(inboundFlows: $inboundFlows, outboundFlows: $outboundFlows)'; } 
 }
