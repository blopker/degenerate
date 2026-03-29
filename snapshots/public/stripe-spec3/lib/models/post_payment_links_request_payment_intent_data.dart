// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestPaymentIntentDataCaptureMethod {const PostPaymentLinksRequestPaymentIntentDataCaptureMethod._(this.value);

factory PostPaymentLinksRequestPaymentIntentDataCaptureMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'automatic_async' => automaticAsync,
  'manual' => manual,
  _ => PostPaymentLinksRequestPaymentIntentDataCaptureMethod._(json),
}; }

static const PostPaymentLinksRequestPaymentIntentDataCaptureMethod automatic = PostPaymentLinksRequestPaymentIntentDataCaptureMethod._('automatic');

static const PostPaymentLinksRequestPaymentIntentDataCaptureMethod automaticAsync = PostPaymentLinksRequestPaymentIntentDataCaptureMethod._('automatic_async');

static const PostPaymentLinksRequestPaymentIntentDataCaptureMethod manual = PostPaymentLinksRequestPaymentIntentDataCaptureMethod._('manual');

static const List<PostPaymentLinksRequestPaymentIntentDataCaptureMethod> values = [automatic, automaticAsync, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestPaymentIntentDataCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestPaymentIntentDataCaptureMethod($value)'; } 
 }
final class PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage {const PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage._(this.value);

factory PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage._(json),
}; }

static const PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage offSession = PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage._('off_session');

static const PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage onSession = PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage._('on_session');

static const List<PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage($value)'; } 
 }
/// A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
final class PostPaymentLinksRequestPaymentIntentData {const PostPaymentLinksRequestPaymentIntentData({this.captureMethod, this.description, this.metadata, this.setupFutureUsage, this.statementDescriptor, this.statementDescriptorSuffix, this.transferGroup, });

factory PostPaymentLinksRequestPaymentIntentData.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestPaymentIntentData(
  captureMethod: json['capture_method'] != null ? PostPaymentLinksRequestPaymentIntentDataCaptureMethod.fromJson(json['capture_method'] as String) : null,
  description: json['description'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  setupFutureUsage: json['setup_future_usage'] != null ? PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  statementDescriptor: json['statement_descriptor'] as String?,
  statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
  transferGroup: json['transfer_group'] as String?,
); }

final PostPaymentLinksRequestPaymentIntentDataCaptureMethod? captureMethod;

final String? description;

final Map<String,String>? metadata;

final PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage? setupFutureUsage;

final String? statementDescriptor;

final String? statementDescriptorSuffix;

final String? transferGroup;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'description': ?description,
  'metadata': ?metadata,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'statement_descriptor': ?statementDescriptor,
  'statement_descriptor_suffix': ?statementDescriptorSuffix,
  'transfer_group': ?transferGroup,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentLinksRequestPaymentIntentData copyWith({PostPaymentLinksRequestPaymentIntentDataCaptureMethod Function()? captureMethod, String Function()? description, Map<String, String> Function()? metadata, PostPaymentLinksRequestPaymentIntentDataSetupFutureUsage Function()? setupFutureUsage, String Function()? statementDescriptor, String Function()? statementDescriptorSuffix, String Function()? transferGroup, }) { return PostPaymentLinksRequestPaymentIntentData(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  description: description != null ? description() : this.description,
  metadata: metadata != null ? metadata() : this.metadata,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
  statementDescriptorSuffix: statementDescriptorSuffix != null ? statementDescriptorSuffix() : this.statementDescriptorSuffix,
  transferGroup: transferGroup != null ? transferGroup() : this.transferGroup,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestPaymentIntentData &&
          captureMethod == other.captureMethod &&
          description == other.description &&
          metadata == other.metadata &&
          setupFutureUsage == other.setupFutureUsage &&
          statementDescriptor == other.statementDescriptor &&
          statementDescriptorSuffix == other.statementDescriptorSuffix &&
          transferGroup == other.transferGroup; } 
@override int get hashCode { return Object.hash(captureMethod, description, metadata, setupFutureUsage, statementDescriptor, statementDescriptorSuffix, transferGroup); } 
@override String toString() { return 'PostPaymentLinksRequestPaymentIntentData(captureMethod: $captureMethod, description: $description, metadata: $metadata, setupFutureUsage: $setupFutureUsage, statementDescriptor: $statementDescriptor, statementDescriptorSuffix: $statementDescriptorSuffix, transferGroup: $transferGroup)'; } 
 }
