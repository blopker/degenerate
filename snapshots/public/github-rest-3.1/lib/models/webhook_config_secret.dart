// GENERATED CODE - DO NOT MODIFY BY HAND

/// If provided, the `secret` will be used as the `key` to generate the HMAC hex digest value for [delivery signature headers](https://docs.github.com/webhooks/event-payloads/#delivery-headers).
extension type const WebhookConfigSecret(String value) {
factory WebhookConfigSecret.fromJson(String json) => WebhookConfigSecret(json);

String toJson() => value;

}
