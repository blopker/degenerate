// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityGetDomainResponseResultAuthorization {const EmailSecurityGetDomainResponseResultAuthorization({required this.authorized, this.statusMessage, required this.timestamp, });

factory EmailSecurityGetDomainResponseResultAuthorization.fromJson(Map<String, dynamic> json) { return EmailSecurityGetDomainResponseResultAuthorization(
  authorized: json['authorized'] as bool,
  statusMessage: json['status_message'] as String?,
  timestamp: DateTime.parse(json['timestamp'] as String),
); }

final bool authorized;

final String? statusMessage;

final DateTime timestamp;

Map<String, dynamic> toJson() { return {
  'authorized': authorized,
  'status_message': ?statusMessage,
  'timestamp': timestamp.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('authorized') && json['authorized'] is bool &&
      json.containsKey('timestamp') && json['timestamp'] is String; } 
EmailSecurityGetDomainResponseResultAuthorization copyWith({bool? authorized, String? Function()? statusMessage, DateTime? timestamp, }) { return EmailSecurityGetDomainResponseResultAuthorization(
  authorized: authorized ?? this.authorized,
  statusMessage: statusMessage != null ? statusMessage() : this.statusMessage,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetDomainResponseResultAuthorization &&
          authorized == other.authorized &&
          statusMessage == other.statusMessage &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(authorized, statusMessage, timestamp); } 
@override String toString() { return 'EmailSecurityGetDomainResponseResultAuthorization(authorized: $authorized, statusMessage: $statusMessage, timestamp: $timestamp)'; } 
 }
