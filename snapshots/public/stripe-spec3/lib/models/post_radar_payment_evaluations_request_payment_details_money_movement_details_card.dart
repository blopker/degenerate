// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence {const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence._(this.value);

factory PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence._(json),
}; }

static const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence offSession = PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence._('off_session');

static const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence onSession = PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence._('on_session');

static const List<PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence($value)'; } 
 }
final class PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType {const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType._(this.value);

factory PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType.fromJson(String json) { return switch (json) {
  'one_off' => oneOff,
  'recurring' => recurring,
  'setup_one_off' => setupOneOff,
  'setup_recurring' => setupRecurring,
  _ => PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType._(json),
}; }

static const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType oneOff = PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType._('one_off');

static const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType recurring = PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType._('recurring');

static const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType setupOneOff = PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType._('setup_one_off');

static const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType setupRecurring = PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType._('setup_recurring');

static const List<PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType> values = [oneOff, recurring, setupOneOff, setupRecurring];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType($value)'; } 
 }
final class PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard {const PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard({this.customerPresence, this.paymentType, });

factory PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard.fromJson(Map<String, dynamic> json) { return PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard(
  customerPresence: json['customer_presence'] != null ? PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence.fromJson(json['customer_presence'] as String) : null,
  paymentType: json['payment_type'] != null ? PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType.fromJson(json['payment_type'] as String) : null,
); }

final PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence? customerPresence;

final PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType? paymentType;

Map<String, dynamic> toJson() { return {
  if (customerPresence != null) 'customer_presence': customerPresence?.toJson(),
  if (paymentType != null) 'payment_type': paymentType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard copyWith({PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardCustomerPresence Function()? customerPresence, PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCardPaymentType Function()? paymentType, }) { return PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard(
  customerPresence: customerPresence != null ? customerPresence() : this.customerPresence,
  paymentType: paymentType != null ? paymentType() : this.paymentType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard &&
          customerPresence == other.customerPresence &&
          paymentType == other.paymentType; } 
@override int get hashCode { return Object.hash(customerPresence, paymentType); } 
@override String toString() { return 'PostRadarPaymentEvaluationsRequestPaymentDetailsMoneyMovementDetailsCard(customerPresence: $customerPresence, paymentType: $paymentType)'; } 
 }
