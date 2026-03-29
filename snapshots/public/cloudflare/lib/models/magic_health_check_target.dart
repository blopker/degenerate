// GENERATED CODE - DO NOT MODIFY BY HAND

/// The destination address in a request type health check. After the healthcheck is decapsulated at the customer end of the tunnel, the ICMP echo will be forwarded to this address. This field defaults to `customer_gre_endpoint address`. This field is ignored for bidirectional healthchecks as the interface_address (not assigned to the Cloudflare side of the tunnel) is used as the target.
final class MagicHealthCheckTarget {const MagicHealthCheckTarget({this.effective, this.saved, });

factory MagicHealthCheckTarget.fromJson(Map<String, dynamic> json) { return MagicHealthCheckTarget(
  effective: json['effective'] as String?,
  saved: json['saved'] as String?,
); }

/// The effective health check target. If 'saved' is empty, then this field will be populated with the calculated default value on GET requests. Ignored in POST, PUT, and PATCH requests.
final String? effective;

/// The saved health check target. Setting the value to the empty string indicates that the calculated default value will be used.
final String? saved;

Map<String, dynamic> toJson() { return {
  'effective': ?effective,
  'saved': ?saved,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MagicHealthCheckTarget copyWith({String Function()? effective, String Function()? saved, }) { return MagicHealthCheckTarget(
  effective: effective != null ? effective() : this.effective,
  saved: saved != null ? saved() : this.saved,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicHealthCheckTarget &&
          effective == other.effective &&
          saved == other.saved; } 
@override int get hashCode { return Object.hash(effective, saved); } 
@override String toString() { return 'MagicHealthCheckTarget(effective: $effective, saved: $saved)'; } 
 }
