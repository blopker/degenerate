// GENERATED CODE - DO NOT MODIFY BY HAND

/// The number of milliseconds that a message is exclusively leased. After the timeout, the message becomes available for another attempt.
extension type const MqVisibilityTimeout(double value) {
factory MqVisibilityTimeout.fromJson(num json) => MqVisibilityTimeout(json.toDouble());

num toJson() => value;

}
