// GENERATED CODE - DO NOT MODIFY BY HAND

/// End user details.
final class PostTreasuryOutboundPaymentsRequestEndUserDetails {const PostTreasuryOutboundPaymentsRequestEndUserDetails({this.ipAddress, required this.present, });

factory PostTreasuryOutboundPaymentsRequestEndUserDetails.fromJson(Map<String, dynamic> json) { return PostTreasuryOutboundPaymentsRequestEndUserDetails(
  ipAddress: json['ip_address'] as String?,
  present: json['present'] as bool,
); }

final String? ipAddress;

final bool present;

Map<String, dynamic> toJson() { return {
  'ip_address': ?ipAddress,
  'present': present,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('present') && json['present'] is bool; } 
PostTreasuryOutboundPaymentsRequestEndUserDetails copyWith({String Function()? ipAddress, bool? present, }) { return PostTreasuryOutboundPaymentsRequestEndUserDetails(
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  present: present ?? this.present,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestEndUserDetails &&
          ipAddress == other.ipAddress &&
          present == other.present; } 
@override int get hashCode { return Object.hash(ipAddress, present); } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestEndUserDetails(ipAddress: $ipAddress, present: $present)'; } 
 }
