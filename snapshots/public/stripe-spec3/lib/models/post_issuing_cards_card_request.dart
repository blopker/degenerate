// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_cards_card_request_metadata.dart';import 'post_issuing_cards_card_request_pin.dart';import 'post_issuing_cards_card_request_shipping.dart';import 'post_issuing_cards_card_request_spending_controls.dart';/// Reason why the `status` of this card is `canceled`.
@immutable final class PostIssuingCardsCardRequestCancellationReason {const PostIssuingCardsCardRequestCancellationReason._(this.value);

factory PostIssuingCardsCardRequestCancellationReason.fromJson(String json) { return switch (json) {
  'lost' => lost,
  'stolen' => stolen,
  _ => PostIssuingCardsCardRequestCancellationReason._(json),
}; }

static const PostIssuingCardsCardRequestCancellationReason lost = PostIssuingCardsCardRequestCancellationReason._('lost');

static const PostIssuingCardsCardRequestCancellationReason stolen = PostIssuingCardsCardRequestCancellationReason._('stolen');

static const List<PostIssuingCardsCardRequestCancellationReason> values = [lost, stolen];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardsCardRequestCancellationReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardsCardRequestCancellationReason($value)'; } 
 }
/// Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
@immutable final class PostIssuingCardsCardRequestStatus {const PostIssuingCardsCardRequestStatus._(this.value);

factory PostIssuingCardsCardRequestStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'canceled' => canceled,
  'inactive' => inactive,
  _ => PostIssuingCardsCardRequestStatus._(json),
}; }

static const PostIssuingCardsCardRequestStatus active = PostIssuingCardsCardRequestStatus._('active');

static const PostIssuingCardsCardRequestStatus canceled = PostIssuingCardsCardRequestStatus._('canceled');

static const PostIssuingCardsCardRequestStatus inactive = PostIssuingCardsCardRequestStatus._('inactive');

static const List<PostIssuingCardsCardRequestStatus> values = [active, canceled, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardsCardRequestStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardsCardRequestStatus($value)'; } 
 }
@immutable final class PostIssuingCardsCardRequest {const PostIssuingCardsCardRequest({this.cancellationReason, this.expand, this.metadata, this.personalizationDesign, this.pin, this.shipping, this.spendingControls, this.status, });

factory PostIssuingCardsCardRequest.fromJson(Map<String, dynamic> json) { return PostIssuingCardsCardRequest(
  cancellationReason: json['cancellation_reason'] != null ? PostIssuingCardsCardRequestCancellationReason.fromJson(json['cancellation_reason'] as String) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostIssuingCardsCardRequestMetadataVariant2.fromJson(v as String),) : null,
  personalizationDesign: json['personalization_design'] as String?,
  pin: json['pin'] != null ? PostIssuingCardsCardRequestPin.fromJson(json['pin'] as Map<String, dynamic>) : null,
  shipping: json['shipping'] != null ? PostIssuingCardsCardRequestShipping.fromJson(json['shipping'] as Map<String, dynamic>) : null,
  spendingControls: json['spending_controls'] != null ? PostIssuingCardsCardRequestSpendingControls.fromJson(json['spending_controls'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? PostIssuingCardsCardRequestStatus.fromJson(json['status'] as String) : null,
); }

/// Reason why the `status` of this card is `canceled`.
final PostIssuingCardsCardRequestCancellationReason? cancellationReason;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostIssuingCardsCardRequestMetadata? metadata;

final String? personalizationDesign;

/// The desired new PIN for this card.
final PostIssuingCardsCardRequestPin? pin;

/// Updated shipping information for the card.
final PostIssuingCardsCardRequestShipping? shipping;

/// Rules that control spending for this card. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
final PostIssuingCardsCardRequestSpendingControls? spendingControls;

/// Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
final PostIssuingCardsCardRequestStatus? status;

Map<String, dynamic> toJson() { return {
  if (cancellationReason != null) 'cancellation_reason': cancellationReason?.toJson(),
  'expand': ?expand,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'personalization_design': ?personalizationDesign,
  if (pin != null) 'pin': pin?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
  if (spendingControls != null) 'spending_controls': spendingControls?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cancellation_reason', 'expand', 'metadata', 'personalization_design', 'pin', 'shipping', 'spending_controls', 'status'}.contains(key)); } 
PostIssuingCardsCardRequest copyWith({PostIssuingCardsCardRequestCancellationReason Function()? cancellationReason, List<String> Function()? expand, PostIssuingCardsCardRequestMetadata Function()? metadata, String Function()? personalizationDesign, PostIssuingCardsCardRequestPin Function()? pin, PostIssuingCardsCardRequestShipping Function()? shipping, PostIssuingCardsCardRequestSpendingControls Function()? spendingControls, PostIssuingCardsCardRequestStatus Function()? status, }) { return PostIssuingCardsCardRequest(
  cancellationReason: cancellationReason != null ? cancellationReason() : this.cancellationReason,
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  personalizationDesign: personalizationDesign != null ? personalizationDesign() : this.personalizationDesign,
  pin: pin != null ? pin() : this.pin,
  shipping: shipping != null ? shipping() : this.shipping,
  spendingControls: spendingControls != null ? spendingControls() : this.spendingControls,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardsCardRequest &&
          cancellationReason == other.cancellationReason &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          personalizationDesign == other.personalizationDesign &&
          pin == other.pin &&
          shipping == other.shipping &&
          spendingControls == other.spendingControls &&
          status == other.status; } 
@override int get hashCode { return Object.hash(cancellationReason, Object.hashAll(expand ?? const []), metadata, personalizationDesign, pin, shipping, spendingControls, status); } 
@override String toString() { return 'PostIssuingCardsCardRequest(cancellationReason: $cancellationReason, expand: $expand, metadata: $metadata, personalizationDesign: $personalizationDesign, pin: $pin, shipping: $shipping, spendingControls: $spendingControls, status: $status)'; } 
 }
