// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient {const PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient.fromJson(String json) { return switch (json) {
  'android' => android,
  'ios' => ios,
  'web' => web,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient android = PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient._('android');

static const PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient ios = PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient._('ios');

static const PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient web = PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient._('web');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient> values = [android, ios, web];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage._('none');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay {const PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay({this.appId, required this.client, this.setupFutureUsage, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay(
  appId: json['app_id'] as String?,
  client: PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient.fromJson(json['client'] as String),
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final String? appId;

final PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient client;

final PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'app_id': ?appId,
  'client': client.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('client'); } 
PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay copyWith({String Function()? appId, PostCheckoutSessionsRequestPaymentMethodOptionsWechatPayClient? client, PostCheckoutSessionsRequestPaymentMethodOptionsWechatPaySetupFutureUsage Function()? setupFutureUsage, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay(
  appId: appId != null ? appId() : this.appId,
  client: client ?? this.client,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay &&
          appId == other.appId &&
          client == other.client &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(appId, client, setupFutureUsage); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay(appId: $appId, client: $client, setupFutureUsage: $setupFutureUsage)'; } 
 }
