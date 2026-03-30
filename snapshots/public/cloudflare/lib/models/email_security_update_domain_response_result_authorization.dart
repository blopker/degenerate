// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityUpdateDomainResponseResultAuthorization {const EmailSecurityUpdateDomainResponseResultAuthorization({required this.authorized, this.statusMessage, required this.timestamp, });

factory EmailSecurityUpdateDomainResponseResultAuthorization.fromJson(Map<String, dynamic> json) { return EmailSecurityUpdateDomainResponseResultAuthorization(
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
EmailSecurityUpdateDomainResponseResultAuthorization copyWith({bool? authorized, String? Function()? statusMessage, DateTime? timestamp, }) { return EmailSecurityUpdateDomainResponseResultAuthorization(
  authorized: authorized ?? this.authorized,
  statusMessage: statusMessage != null ? statusMessage() : this.statusMessage,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityUpdateDomainResponseResultAuthorization &&
          authorized == other.authorized &&
          statusMessage == other.statusMessage &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(authorized, statusMessage, timestamp); } 
@override String toString() { return 'EmailSecurityUpdateDomainResponseResultAuthorization(authorized: $authorized, statusMessage: $statusMessage, timestamp: $timestamp)'; } 
 }
