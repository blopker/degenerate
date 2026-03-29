// GENERATED CODE - DO NOT MODIFY BY HAND

/// The desired forwarding action for this ACL policy. If set to "false", the policy will forward traffic to Cloudflare. If set to "true", the policy will forward traffic locally on the Magic Connector. If not included in request, will default to false.
extension type const MagicForwardLocally(bool value) {
factory MagicForwardLocally.fromJson(bool json) => MagicForwardLocally(json);

bool toJson() => value;

}
