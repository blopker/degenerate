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
@immutable final class SecretScanningAlert {const SecretScanningAlert({this.number, this.createdAt, this.updatedAt = const Omittable.absent(), this.url, this.htmlUrl, this.locationsUrl, this.state, this.resolution = const Omittable.absent(), this.resolvedAt = const Omittable.absent(), this.resolvedBy = const Omittable.absent(), this.resolutionComment = const Omittable.absent(), this.secretType, this.secretTypeDisplayName, this.secret, this.pushProtectionBypassed = const Omittable.absent(), this.pushProtectionBypassedBy = const Omittable.absent(), this.pushProtectionBypassedAt = const Omittable.absent(), this.pushProtectionBypassRequestReviewer = const Omittable.absent(), this.pushProtectionBypassRequestReviewerComment = const Omittable.absent(), this.pushProtectionBypassRequestComment = const Omittable.absent(), this.pushProtectionBypassRequestHtmlUrl = const Omittable.absent(), this.validity, this.publiclyLeaked = const Omittable.absent(), this.multiRepo = const Omittable.absent(), this.isBase64Encoded = const Omittable.absent(), this.firstLocationDetected = const Omittable.absent(), this.hasMoreLocations, this.assignedTo = const Omittable.absent(), });

factory SecretScanningAlert.fromJson(Map<String, dynamic> json) { return SecretScanningAlert(
  number: json['number'] != null ? AlertNumber.fromJson(json['number'] as num) : null,
  createdAt: json['created_at'] != null ? AlertCreatedAt.fromJson(json['created_at'] as String) : null,
  updatedAt: json.containsKey('updated_at') ? Omittable(json['updated_at'] != null ? AlertUpdatedAt.fromJson(json['updated_at'] as String) : null) : const Omittable.absent(),
  url: json['url'] != null ? AlertUrl.fromJson(json['url'] as String) : null,
  htmlUrl: json['html_url'] != null ? AlertHtmlUrl.fromJson(json['html_url'] as String) : null,
  locationsUrl: json['locations_url'] != null ? Uri.parse(json['locations_url'] as String) : null,
  state: json['state'] != null ? SecretScanningAlertState.fromJson(json['state'] as String) : null,
  resolution: json.containsKey('resolution') ? Omittable(json['resolution'] != null ? SecretScanningAlertResolution.fromJson(json['resolution'] as String) : null) : const Omittable.absent(),
  resolvedAt: json.containsKey('resolved_at') ? Omittable(json['resolved_at'] != null ? DateTime.parse(json['resolved_at'] as String) : null) : const Omittable.absent(),
  resolvedBy: json.containsKey('resolved_by') ? Omittable(json['resolved_by'] != null ? SimpleUser.fromJson(json['resolved_by'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  resolutionComment: json.containsKey('resolution_comment') ? Omittable(json['resolution_comment'] as String?) : const Omittable.absent(),
  secretType: json['secret_type'] as String?,
  secretTypeDisplayName: json['secret_type_display_name'] as String?,
  secret: json['secret'] as String?,
  pushProtectionBypassed: json.containsKey('push_protection_bypassed') ? Omittable(json['push_protection_bypassed'] as bool?) : const Omittable.absent(),
  pushProtectionBypassedBy: json.containsKey('push_protection_bypassed_by') ? Omittable(json['push_protection_bypassed_by'] != null ? SimpleUser.fromJson(json['push_protection_bypassed_by'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  pushProtectionBypassedAt: json.containsKey('push_protection_bypassed_at') ? Omittable(json['push_protection_bypassed_at'] != null ? DateTime.parse(json['push_protection_bypassed_at'] as String) : null) : const Omittable.absent(),
  pushProtectionBypassRequestReviewer: json.containsKey('push_protection_bypass_request_reviewer') ? Omittable(json['push_protection_bypass_request_reviewer'] != null ? SimpleUser.fromJson(json['push_protection_bypass_request_reviewer'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  pushProtectionBypassRequestReviewerComment: json.containsKey('push_protection_bypass_request_reviewer_comment') ? Omittable(json['push_protection_bypass_request_reviewer_comment'] as String?) : const Omittable.absent(),
  pushProtectionBypassRequestComment: json.containsKey('push_protection_bypass_request_comment') ? Omittable(json['push_protection_bypass_request_comment'] as String?) : const Omittable.absent(),
  pushProtectionBypassRequestHtmlUrl: json.containsKey('push_protection_bypass_request_html_url') ? Omittable(json['push_protection_bypass_request_html_url'] != null ? Uri.parse(json['push_protection_bypass_request_html_url'] as String) : null) : const Omittable.absent(),
  validity: json['validity'] != null ? SecretScanningAlertValidity.fromJson(json['validity'] as String) : null,
  publiclyLeaked: json.containsKey('publicly_leaked') ? Omittable(json['publicly_leaked'] as bool?) : const Omittable.absent(),
  multiRepo: json.containsKey('multi_repo') ? Omittable(json['multi_repo'] as bool?) : const Omittable.absent(),
  isBase64Encoded: json.containsKey('is_base64_encoded') ? Omittable(json['is_base64_encoded'] as bool?) : const Omittable.absent(),
  firstLocationDetected: json.containsKey('first_location_detected') ? Omittable(json['first_location_detected'] != null ? SecretScanningFirstDetectedLocation.fromJson(json['first_location_detected'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  hasMoreLocations: json['has_more_locations'] as bool?,
  assignedTo: json.containsKey('assigned_to') ? Omittable(json['assigned_to'] != null ? SimpleUser.fromJson(json['assigned_to'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The security alert number.
final AlertNumber? number;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertCreatedAt? createdAt;

/// The time that the alert was last updated in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<AlertUpdatedAt?> updatedAt;

/// The REST API URL of the alert resource.
final AlertUrl? url;

/// The GitHub URL of the alert resource.
final AlertHtmlUrl? htmlUrl;

/// The REST API URL of the code locations for this alert.
final Uri? locationsUrl;

/// Sets the state of the secret scanning alert. You must provide `resolution` when you set the state to `resolved`.
final SecretScanningAlertState? state;

/// **Required when the `state` is `resolved`.** The reason for resolving the alert.
final Omittable<SecretScanningAlertResolution?> resolution;

/// The time that the alert was resolved in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<DateTime?> resolvedAt;

final Omittable<SimpleUser?> resolvedBy;

/// An optional comment to resolve an alert.
final Omittable<String?> resolutionComment;

/// The type of secret that secret scanning detected.
final String? secretType;

/// User-friendly name for the detected secret, matching the `secret_type`.
/// For a list of built-in patterns, see "[Supported secret scanning patterns](https://docs.github.com/code-security/secret-scanning/introduction/supported-secret-scanning-patterns#supported-secrets)."
final String? secretTypeDisplayName;

/// The secret that was detected.
final String? secret;

/// Whether push protection was bypassed for the detected secret.
final Omittable<bool?> pushProtectionBypassed;

final Omittable<SimpleUser?> pushProtectionBypassedBy;

/// The time that push protection was bypassed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<DateTime?> pushProtectionBypassedAt;

final Omittable<SimpleUser?> pushProtectionBypassRequestReviewer;

/// An optional comment when reviewing a push protection bypass.
final Omittable<String?> pushProtectionBypassRequestReviewerComment;

/// An optional comment when requesting a push protection bypass.
final Omittable<String?> pushProtectionBypassRequestComment;

/// The URL to a push protection bypass request.
final Omittable<Uri?> pushProtectionBypassRequestHtmlUrl;

/// The token status as of the latest validity check.
final SecretScanningAlertValidity? validity;

/// Whether the detected secret was publicly leaked.
final Omittable<bool?> publiclyLeaked;

/// Whether the detected secret was found in multiple repositories under the same organization or enterprise.
final Omittable<bool?> multiRepo;

/// A boolean value representing whether or not alert is base64 encoded
final Omittable<bool?> isBase64Encoded;

final Omittable<SecretScanningFirstDetectedLocation?> firstLocationDetected;

/// A boolean value representing whether or not the token in the alert was detected in more than one location.
final bool? hasMoreLocations;

final Omittable<SimpleUser?> assignedTo;

Map<String, dynamic> toJson() { return {
  if (number != null) 'number': number?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (updatedAt.isPresent) 'updated_at': updatedAt.value?.toJson(),
  if (url != null) 'url': url?.toJson(),
  if (htmlUrl != null) 'html_url': htmlUrl?.toJson(),
  if (locationsUrl != null) 'locations_url': locationsUrl?.toString(),
  if (state != null) 'state': state?.toJson(),
  if (resolution.isPresent) 'resolution': resolution.value?.toJson(),
  if (resolvedAt.isPresent) 'resolved_at': resolvedAt.value?.toIso8601String(),
  if (resolvedBy.isPresent) 'resolved_by': resolvedBy.value?.toJson(),
  if (resolutionComment.isPresent) 'resolution_comment': resolutionComment.value,
  'secret_type': ?secretType,
  'secret_type_display_name': ?secretTypeDisplayName,
  'secret': ?secret,
  if (pushProtectionBypassed.isPresent) 'push_protection_bypassed': pushProtectionBypassed.value,
  if (pushProtectionBypassedBy.isPresent) 'push_protection_bypassed_by': pushProtectionBypassedBy.value?.toJson(),
  if (pushProtectionBypassedAt.isPresent) 'push_protection_bypassed_at': pushProtectionBypassedAt.value?.toIso8601String(),
  if (pushProtectionBypassRequestReviewer.isPresent) 'push_protection_bypass_request_reviewer': pushProtectionBypassRequestReviewer.value?.toJson(),
  if (pushProtectionBypassRequestReviewerComment.isPresent) 'push_protection_bypass_request_reviewer_comment': pushProtectionBypassRequestReviewerComment.value,
  if (pushProtectionBypassRequestComment.isPresent) 'push_protection_bypass_request_comment': pushProtectionBypassRequestComment.value,
  if (pushProtectionBypassRequestHtmlUrl.isPresent) 'push_protection_bypass_request_html_url': pushProtectionBypassRequestHtmlUrl.value?.toString(),
  if (validity != null) 'validity': validity?.toJson(),
  if (publiclyLeaked.isPresent) 'publicly_leaked': publiclyLeaked.value,
  if (multiRepo.isPresent) 'multi_repo': multiRepo.value,
  if (isBase64Encoded.isPresent) 'is_base64_encoded': isBase64Encoded.value,
  if (firstLocationDetected.isPresent) 'first_location_detected': firstLocationDetected.value?.toJson(),
  'has_more_locations': ?hasMoreLocations,
  if (assignedTo.isPresent) 'assigned_to': assignedTo.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'number', 'created_at', 'updated_at', 'url', 'html_url', 'locations_url', 'state', 'resolution', 'resolved_at', 'resolved_by', 'resolution_comment', 'secret_type', 'secret_type_display_name', 'secret', 'push_protection_bypassed', 'push_protection_bypassed_by', 'push_protection_bypassed_at', 'push_protection_bypass_request_reviewer', 'push_protection_bypass_request_reviewer_comment', 'push_protection_bypass_request_comment', 'push_protection_bypass_request_html_url', 'validity', 'publicly_leaked', 'multi_repo', 'is_base64_encoded', 'first_location_detected', 'has_more_locations', 'assigned_to'}.contains(key)); } 
SecretScanningAlert copyWith({AlertNumber? Function()? number, AlertCreatedAt? Function()? createdAt, Omittable<AlertUpdatedAt?>? updatedAt, AlertUrl? Function()? url, AlertHtmlUrl? Function()? htmlUrl, Uri? Function()? locationsUrl, SecretScanningAlertState? Function()? state, Omittable<SecretScanningAlertResolution?>? resolution, Omittable<DateTime?>? resolvedAt, Omittable<SimpleUser?>? resolvedBy, Omittable<String?>? resolutionComment, String? Function()? secretType, String? Function()? secretTypeDisplayName, String? Function()? secret, Omittable<bool?>? pushProtectionBypassed, Omittable<SimpleUser?>? pushProtectionBypassedBy, Omittable<DateTime?>? pushProtectionBypassedAt, Omittable<SimpleUser?>? pushProtectionBypassRequestReviewer, Omittable<String?>? pushProtectionBypassRequestReviewerComment, Omittable<String?>? pushProtectionBypassRequestComment, Omittable<Uri?>? pushProtectionBypassRequestHtmlUrl, SecretScanningAlertValidity? Function()? validity, Omittable<bool?>? publiclyLeaked, Omittable<bool?>? multiRepo, Omittable<bool?>? isBase64Encoded, Omittable<SecretScanningFirstDetectedLocation?>? firstLocationDetected, bool? Function()? hasMoreLocations, Omittable<SimpleUser?>? assignedTo, }) { return SecretScanningAlert(
  number: number != null ? number() : this.number,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url != null ? url() : this.url,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  locationsUrl: locationsUrl != null ? locationsUrl() : this.locationsUrl,
  state: state != null ? state() : this.state,
  resolution: resolution ?? this.resolution,
  resolvedAt: resolvedAt ?? this.resolvedAt,
  resolvedBy: resolvedBy ?? this.resolvedBy,
  resolutionComment: resolutionComment ?? this.resolutionComment,
  secretType: secretType != null ? secretType() : this.secretType,
  secretTypeDisplayName: secretTypeDisplayName != null ? secretTypeDisplayName() : this.secretTypeDisplayName,
  secret: secret != null ? secret() : this.secret,
  pushProtectionBypassed: pushProtectionBypassed ?? this.pushProtectionBypassed,
  pushProtectionBypassedBy: pushProtectionBypassedBy ?? this.pushProtectionBypassedBy,
  pushProtectionBypassedAt: pushProtectionBypassedAt ?? this.pushProtectionBypassedAt,
  pushProtectionBypassRequestReviewer: pushProtectionBypassRequestReviewer ?? this.pushProtectionBypassRequestReviewer,
  pushProtectionBypassRequestReviewerComment: pushProtectionBypassRequestReviewerComment ?? this.pushProtectionBypassRequestReviewerComment,
  pushProtectionBypassRequestComment: pushProtectionBypassRequestComment ?? this.pushProtectionBypassRequestComment,
  pushProtectionBypassRequestHtmlUrl: pushProtectionBypassRequestHtmlUrl ?? this.pushProtectionBypassRequestHtmlUrl,
  validity: validity != null ? validity() : this.validity,
  publiclyLeaked: publiclyLeaked ?? this.publiclyLeaked,
  multiRepo: multiRepo ?? this.multiRepo,
  isBase64Encoded: isBase64Encoded ?? this.isBase64Encoded,
  firstLocationDetected: firstLocationDetected ?? this.firstLocationDetected,
  hasMoreLocations: hasMoreLocations != null ? hasMoreLocations() : this.hasMoreLocations,
  assignedTo: assignedTo ?? this.assignedTo,
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
