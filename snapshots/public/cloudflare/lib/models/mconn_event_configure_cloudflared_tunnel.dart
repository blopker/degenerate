// GENERATED CODE - DO NOT MODIFY BY HAND

/// Configured Cloudflared tunnel
final class MconnEventConfigureCloudflaredTunnelK {const MconnEventConfigureCloudflaredTunnelK._(this.value);

factory MconnEventConfigureCloudflaredTunnelK.fromJson(String json) { return switch (json) {
  'ConfigureCloudflaredTunnel' => configureCloudflaredTunnel,
  _ => MconnEventConfigureCloudflaredTunnelK._(json),
}; }

static const MconnEventConfigureCloudflaredTunnelK configureCloudflaredTunnel = MconnEventConfigureCloudflaredTunnelK._('ConfigureCloudflaredTunnel');

static const List<MconnEventConfigureCloudflaredTunnelK> values = [configureCloudflaredTunnel];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventConfigureCloudflaredTunnelK && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MconnEventConfigureCloudflaredTunnelK($value)'; } 
 }
final class MconnEventConfigureCloudflaredTunnel {const MconnEventConfigureCloudflaredTunnel({required this.k});

factory MconnEventConfigureCloudflaredTunnel.fromJson(Map<String, dynamic> json) { return MconnEventConfigureCloudflaredTunnel(
  k: MconnEventConfigureCloudflaredTunnelK.fromJson(json['k'] as String),
); }

/// Configured Cloudflared tunnel
final MconnEventConfigureCloudflaredTunnelK k;

Map<String, dynamic> toJson() { return {
  'k': k.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('k'); } 
MconnEventConfigureCloudflaredTunnel copyWith({MconnEventConfigureCloudflaredTunnelK? k}) { return MconnEventConfigureCloudflaredTunnel(
  k: k ?? this.k,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventConfigureCloudflaredTunnel &&
          k == other.k; } 
@override int get hashCode { return k.hashCode; } 
@override String toString() { return 'MconnEventConfigureCloudflaredTunnel(k: $k)'; } 
 }
