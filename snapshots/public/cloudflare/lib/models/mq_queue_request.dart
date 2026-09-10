// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_queue_name.dart';import 'mq_queue_settings.dart';@immutable final class MqQueueRequest {const MqQueueRequest({this.queueName, this.settings, });

factory MqQueueRequest.fromJson(Map<String, dynamic> json) {return MqQueueRequest(
  queueName: json['queue_name'] != null ? MqQueueName.fromJson(json['queue_name'] as String) : null,
  settings: json['settings'] != null ? MqQueueSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
);}

final MqQueueName? queueName;

final MqQueueSettings? settings;

Map<String, dynamic> toJson() {return {
  if (queueName != null) 'queue_name': queueName?.toJson(),
  if (settings != null) 'settings': settings?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'queue_name', 'settings'}.contains(key));}
MqQueueRequest copyWith({MqQueueName? Function()? queueName, MqQueueSettings? Function()? settings, }) {return MqQueueRequest(
  queueName: queueName != null ? queueName() : this.queueName,
  settings: settings != null ? settings() : this.settings,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is MqQueueRequest &&
          queueName == other.queueName &&
          settings == other.settings;}
@override int get hashCode {return Object.hash(queueName, settings);}
@override String toString() {return 'MqQueueRequest(queueName: $queueName, settings: $settings)';}
}
