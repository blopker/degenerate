// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alert_created_at.dart';import 'alert_html_url.dart';import 'alert_number.dart';import 'alert_updated_at.dart';import 'alert_url.dart';import 'secret_scanning_alert_resolution.dart';import 'secret_scanning_alert_state.dart';import 'secret_scanning_first_detected_location.dart';import 'simple_user.dart';/// The token status as of the latest validity check.
@immutable final class SecretScanningAlertValidity {const SecretScanningAlertValidity._(this.value);

factory SecretScanningAlertValidity.fromJson(String json) { return switch (json) {
  'active' => active,
  'inactive' => inactive,
  'unknown' => unknown,
  _ => SecretScanningAlertValidity._(json),
}; }

static const SecretScanningAlertValidity active = SecretScanningAlertValidity._('active');

static const SecretScanningAlertValidity inactive = SecretScanningAlertValidity._('inactive');

static const SecretScanningAlertValidity unknown = SecretScanningAlertValidity._('unknown');

static const List<SecretScanningAlertValidity> values = [active, inactive, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningAlertValidity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretScanningAlertValidity($value)'; } 
 }
@immutable final class SecretScanningAlert {const SecretScanningAlert({this.number, this.createdAt, this.updatedAt, this.url, this.htmlUrl, this.locationsUrl, this.state, this.resolution, this.resolvedAt, this.resolvedBy, this.resolutionComment, this.secretType, this.secretTypeDisplayName, this.secret, this.pushProtectionBypassed, this.pushProtectionBypassedBy, this.pushProtectionBypassedAt, this.pushProtectionBypassRequestReviewer, this.pushProtectionBypassRequestReviewerComment, this.pushProtectionBypassRequestComment, this.pushProtectionBypassRequestHtmlUrl, this.validity, this.publiclyLeaked, this.multiRepo, this.isBase64Encoded, this.firstLocationDetected, this.hasMoreLocations, this.assignedTo, });

factory SecretScanningAlert.fromJson(Map<String, dynamic> json) { return SecretScanningAlert(
  number: json['number'] != null ? AlertNumber.fromJson(json['number'] as num) : null,
  createdAt: json['created_at'] != null ? AlertCreatedAt.fromJson(json['created_at'] as String) : null,
  updatedAt: json['updated_at'] != null ? AlertUpdatedAt.fromJson(json['updated_at'] as String) : null,
  url: json['url'] != null ? AlertUrl.fromJson(json['url'] as String) : null,
  htmlUrl: json['html_url'] != null ? AlertHtmlUrl.fromJson(json['html_url'] as String) : null,
  locationsUrl: json['locations_url'] != null ? Uri.parse(json['locations_url'] as String) : null,
  state: json['state'] != null ? SecretScanningAlertState.fromJson(json['state'] as String) : null,
  resolution: json['resolution'] != null ? SecretScanningAlertResolution.fromJson(json['resolution'] as String) : null,
  resolvedAt: json['resolved_at'] != null ? DateTime.parse(json['resolved_at'] as String) : null,
  resolvedBy: json['resolved_by'] != null ? SimpleUser.fromJson(json['resolved_by'] as Map<String, dynamic>) : null,
  resolutionComment: json['resolution_comment'] as String?,
  secretType: json['secret_type'] as String?,
  secretTypeDisplayName: json['secret_type_display_name'] as String?,
  secret: json['secret'] as String?,
  pushProtectionBypassed: json['push_protection_bypassed'] as bool?,
  pushProtectionBypassedBy: json['push_protection_bypassed_by'] != null ? SimpleUser.fromJson(json['push_protection_bypassed_by'] as Map<String, dynamic>) : null,
  pushProtectionBypassedAt: json['push_protection_bypassed_at'] != null ? DateTime.parse(json['push_protection_bypassed_at'] as String) : null,
  pushProtectionBypassRequestReviewer: json['push_protection_bypass_request_reviewer'] != null ? SimpleUser.fromJson(json['push_protection_bypass_request_reviewer'] as Map<String, dynamic>) : null,
  pushProtectionBypassRequestReviewerComment: json['push_protection_bypass_request_reviewer_comment'] as String?,
  pushProtectionBypassRequestComment: json['push_protection_bypass_request_comment'] as String?,
  pushProtectionBypassRequestHtmlUrl: json['push_protection_bypass_request_html_url'] != null ? Uri.parse(json['push_protection_bypass_request_html_url'] as String) : null,
  validity: json['validity'] != null ? SecretScanningAlertValidity.fromJson(json['validity'] as String) : null,
  publiclyLeaked: json['publicly_leaked'] as bool?,
  multiRepo: json['multi_repo'] as bool?,
  isBase64Encoded: json['is_base64_encoded'] as bool?,
  firstLocationDetected: json['first_location_detected'] != null ? SecretScanningFirstDetectedLocation.fromJson(json['first_location_detected'] as Map<String, dynamic>) : null,
  hasMoreLocations: json['has_more_locations'] as bool?,
  assignedTo: json['assigned_to'] != null ? SimpleUser.fromJson(json['assigned_to'] as Map<String, dynamic>) : null,
); }

/// The security alert number.
final AlertNumber? number;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertCreatedAt? createdAt;

/// The time that the alert was last updated in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertUpdatedAt? updatedAt;

/// The REST API URL of the alert resource.
final AlertUrl? url;

/// The GitHub URL of the alert resource.
final AlertHtmlUrl? htmlUrl;

/// The REST API URL of the code locations for this alert.
final Uri? locationsUrl;

/// Sets the state of the secret scanning alert. You must provide `resolution` when you set the state to `resolved`.
final SecretScanningAlertState? state;

/// **Required when the `state` is `resolved`.** The reason for resolving the alert.
final SecretScanningAlertResolution? resolution;

/// The time that the alert was resolved in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime? resolvedAt;

final SimpleUser? resolvedBy;

/// An optional comment to resolve an alert.
final String? resolutionComment;

/// The type of secret that secret scanning detected.
final String? secretType;

/// User-friendly name for the detected secret, matching the `secret_type`.
/// For a list of built-in patterns, see "[Supported secret scanning patterns](https://docs.github.com/code-security/secret-scanning/introduction/supported-secret-scanning-patterns#supported-secrets)."
final String? secretTypeDisplayName;

/// The secret that was detected.
final String? secret;

/// Whether push protection was bypassed for the detected secret.
final bool? pushProtectionBypassed;

final SimpleUser? pushProtectionBypassedBy;

/// The time that push protection was bypassed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime? pushProtectionBypassedAt;

final SimpleUser? pushProtectionBypassRequestReviewer;

/// An optional comment when reviewing a push protection bypass.
final String? pushProtectionBypassRequestReviewerComment;

/// An optional comment when requesting a push protection bypass.
final String? pushProtectionBypassRequestComment;

/// The URL to a push protection bypass request.
final Uri? pushProtectionBypassRequestHtmlUrl;

/// The token status as of the latest validity check.
final SecretScanningAlertValidity? validity;

/// Whether the detected secret was publicly leaked.
final bool? publiclyLeaked;

/// Whether the detected secret was found in multiple repositories under the same organization or enterprise.
final bool? multiRepo;

/// A boolean value representing whether or not alert is base64 encoded
final bool? isBase64Encoded;

final SecretScanningFirstDetectedLocation? firstLocationDetected;

/// A boolean value representing whether or not the token in the alert was detected in more than one location.
final bool? hasMoreLocations;

final SimpleUser? assignedTo;

Map<String, dynamic> toJson() { return {
  if (number != null) 'number': number?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (url != null) 'url': url?.toJson(),
  if (htmlUrl != null) 'html_url': htmlUrl?.toJson(),
  if (locationsUrl != null) 'locations_url': locationsUrl?.toString(),
  if (state != null) 'state': state?.toJson(),
  if (resolution != null) 'resolution': resolution?.toJson(),
  if (resolvedAt != null) 'resolved_at': resolvedAt?.toIso8601String(),
  if (resolvedBy != null) 'resolved_by': resolvedBy?.toJson(),
  'resolution_comment': ?resolutionComment,
  'secret_type': ?secretType,
  'secret_type_display_name': ?secretTypeDisplayName,
  'secret': ?secret,
  'push_protection_bypassed': ?pushProtectionBypassed,
  if (pushProtectionBypassedBy != null) 'push_protection_bypassed_by': pushProtectionBypassedBy?.toJson(),
  if (pushProtectionBypassedAt != null) 'push_protection_bypassed_at': pushProtectionBypassedAt?.toIso8601String(),
  if (pushProtectionBypassRequestReviewer != null) 'push_protection_bypass_request_reviewer': pushProtectionBypassRequestReviewer?.toJson(),
  'push_protection_bypass_request_reviewer_comment': ?pushProtectionBypassRequestReviewerComment,
  'push_protection_bypass_request_comment': ?pushProtectionBypassRequestComment,
  if (pushProtectionBypassRequestHtmlUrl != null) 'push_protection_bypass_request_html_url': pushProtectionBypassRequestHtmlUrl?.toString(),
  if (validity != null) 'validity': validity?.toJson(),
  'publicly_leaked': ?publiclyLeaked,
  'multi_repo': ?multiRepo,
  'is_base64_encoded': ?isBase64Encoded,
  if (firstLocationDetected != null) 'first_location_detected': firstLocationDetected?.toJson(),
  'has_more_locations': ?hasMoreLocations,
  if (assignedTo != null) 'assigned_to': assignedTo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'number', 'created_at', 'updated_at', 'url', 'html_url', 'locations_url', 'state', 'resolution', 'resolved_at', 'resolved_by', 'resolution_comment', 'secret_type', 'secret_type_display_name', 'secret', 'push_protection_bypassed', 'push_protection_bypassed_by', 'push_protection_bypassed_at', 'push_protection_bypass_request_reviewer', 'push_protection_bypass_request_reviewer_comment', 'push_protection_bypass_request_comment', 'push_protection_bypass_request_html_url', 'validity', 'publicly_leaked', 'multi_repo', 'is_base64_encoded', 'first_location_detected', 'has_more_locations', 'assigned_to'}.contains(key)); } 
SecretScanningAlert copyWith({AlertNumber Function()? number, AlertCreatedAt Function()? createdAt, AlertUpdatedAt? Function()? updatedAt, AlertUrl Function()? url, AlertHtmlUrl Function()? htmlUrl, Uri Function()? locationsUrl, SecretScanningAlertState Function()? state, SecretScanningAlertResolution? Function()? resolution, DateTime? Function()? resolvedAt, SimpleUser? Function()? resolvedBy, String? Function()? resolutionComment, String Function()? secretType, String Function()? secretTypeDisplayName, String Function()? secret, bool? Function()? pushProtectionBypassed, SimpleUser? Function()? pushProtectionBypassedBy, DateTime? Function()? pushProtectionBypassedAt, SimpleUser? Function()? pushProtectionBypassRequestReviewer, String? Function()? pushProtectionBypassRequestReviewerComment, String? Function()? pushProtectionBypassRequestComment, Uri? Function()? pushProtectionBypassRequestHtmlUrl, SecretScanningAlertValidity Function()? validity, bool? Function()? publiclyLeaked, bool? Function()? multiRepo, bool? Function()? isBase64Encoded, SecretScanningFirstDetectedLocation? Function()? firstLocationDetected, bool Function()? hasMoreLocations, SimpleUser? Function()? assignedTo, }) { return SecretScanningAlert(
  number: number != null ? number() : this.number,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url != null ? url() : this.url,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  locationsUrl: locationsUrl != null ? locationsUrl() : this.locationsUrl,
  state: state != null ? state() : this.state,
  resolution: resolution != null ? resolution() : this.resolution,
  resolvedAt: resolvedAt != null ? resolvedAt() : this.resolvedAt,
  resolvedBy: resolvedBy != null ? resolvedBy() : this.resolvedBy,
  resolutionComment: resolutionComment != null ? resolutionComment() : this.resolutionComment,
  secretType: secretType != null ? secretType() : this.secretType,
  secretTypeDisplayName: secretTypeDisplayName != null ? secretTypeDisplayName() : this.secretTypeDisplayName,
  secret: secret != null ? secret() : this.secret,
  pushProtectionBypassed: pushProtectionBypassed != null ? pushProtectionBypassed() : this.pushProtectionBypassed,
  pushProtectionBypassedBy: pushProtectionBypassedBy != null ? pushProtectionBypassedBy() : this.pushProtectionBypassedBy,
  pushProtectionBypassedAt: pushProtectionBypassedAt != null ? pushProtectionBypassedAt() : this.pushProtectionBypassedAt,
  pushProtectionBypassRequestReviewer: pushProtectionBypassRequestReviewer != null ? pushProtectionBypassRequestReviewer() : this.pushProtectionBypassRequestReviewer,
  pushProtectionBypassRequestReviewerComment: pushProtectionBypassRequestReviewerComment != null ? pushProtectionBypassRequestReviewerComment() : this.pushProtectionBypassRequestReviewerComment,
  pushProtectionBypassRequestComment: pushProtectionBypassRequestComment != null ? pushProtectionBypassRequestComment() : this.pushProtectionBypassRequestComment,
  pushProtectionBypassRequestHtmlUrl: pushProtectionBypassRequestHtmlUrl != null ? pushProtectionBypassRequestHtmlUrl() : this.pushProtectionBypassRequestHtmlUrl,
  validity: validity != null ? validity() : this.validity,
  publiclyLeaked: publiclyLeaked != null ? publiclyLeaked() : this.publiclyLeaked,
  multiRepo: multiRepo != null ? multiRepo() : this.multiRepo,
  isBase64Encoded: isBase64Encoded != null ? isBase64Encoded() : this.isBase64Encoded,
  firstLocationDetected: firstLocationDetected != null ? firstLocationDetected() : this.firstLocationDetected,
  hasMoreLocations: hasMoreLocations != null ? hasMoreLocations() : this.hasMoreLocations,
  assignedTo: assignedTo != null ? assignedTo() : this.assignedTo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningAlert &&
          number == other.number &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          locationsUrl == other.locationsUrl &&
          state == other.state &&
          resolution == other.resolution &&
          resolvedAt == other.resolvedAt &&
          resolvedBy == other.resolvedBy &&
          resolutionComment == other.resolutionComment &&
          secretType == other.secretType &&
          secretTypeDisplayName == other.secretTypeDisplayName &&
          secret == other.secret &&
          pushProtectionBypassed == other.pushProtectionBypassed &&
          pushProtectionBypassedBy == other.pushProtectionBypassedBy &&
          pushProtectionBypassedAt == other.pushProtectionBypassedAt &&
          pushProtectionBypassRequestReviewer == other.pushProtectionBypassRequestReviewer &&
          pushProtectionBypassRequestReviewerComment == other.pushProtectionBypassRequestReviewerComment &&
          pushProtectionBypassRequestComment == other.pushProtectionBypassRequestComment &&
          pushProtectionBypassRequestHtmlUrl == other.pushProtectionBypassRequestHtmlUrl &&
          validity == other.validity &&
          publiclyLeaked == other.publiclyLeaked &&
          multiRepo == other.multiRepo &&
          isBase64Encoded == other.isBase64Encoded &&
          firstLocationDetected == other.firstLocationDetected &&
          hasMoreLocations == other.hasMoreLocations &&
          assignedTo == other.assignedTo; } 
@override int get hashCode { return Object.hashAll([number, createdAt, updatedAt, url, htmlUrl, locationsUrl, state, resolution, resolvedAt, resolvedBy, resolutionComment, secretType, secretTypeDisplayName, secret, pushProtectionBypassed, pushProtectionBypassedBy, pushProtectionBypassedAt, pushProtectionBypassRequestReviewer, pushProtectionBypassRequestReviewerComment, pushProtectionBypassRequestComment, pushProtectionBypassRequestHtmlUrl, validity, publiclyLeaked, multiRepo, isBase64Encoded, firstLocationDetected, hasMoreLocations, assignedTo]); } 
@override String toString() { return 'SecretScanningAlert(number: $number, createdAt: $createdAt, updatedAt: $updatedAt, url: $url, htmlUrl: $htmlUrl, locationsUrl: $locationsUrl, state: $state, resolution: $resolution, resolvedAt: $resolvedAt, resolvedBy: $resolvedBy, resolutionComment: $resolutionComment, secretType: $secretType, secretTypeDisplayName: $secretTypeDisplayName, secret: $secret, pushProtectionBypassed: $pushProtectionBypassed, pushProtectionBypassedBy: $pushProtectionBypassedBy, pushProtectionBypassedAt: $pushProtectionBypassedAt, pushProtectionBypassRequestReviewer: $pushProtectionBypassRequestReviewer, pushProtectionBypassRequestReviewerComment: $pushProtectionBypassRequestReviewerComment, pushProtectionBypassRequestComment: $pushProtectionBypassRequestComment, pushProtectionBypassRequestHtmlUrl: $pushProtectionBypassRequestHtmlUrl, validity: $validity, publiclyLeaked: $publiclyLeaked, multiRepo: $multiRepo, isBase64Encoded: $isBase64Encoded, firstLocationDetected: $firstLocationDetected, hasMoreLocations: $hasMoreLocations, assignedTo: $assignedTo)'; } 
 }
