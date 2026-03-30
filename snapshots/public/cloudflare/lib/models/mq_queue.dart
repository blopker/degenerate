// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_consumer_response.dart';import 'mq_producer.dart';import 'mq_queue_name.dart';import 'mq_queue_settings.dart';import 'mq_r2_producer.dart';import 'mq_worker_producer.dart';final class MqQueue {const MqQueue({this.consumers, this.consumersTotalCount, this.createdOn, this.modifiedOn, this.producers, this.producersTotalCount, this.queueId, this.queueName, this.settings, });

factory MqQueue.fromJson(Map<String, dynamic> json) { return MqQueue(
  consumers: (json['consumers'] as List<dynamic>?)?.map((e) => MqConsumerResponse.fromJson(e as Map<String, dynamic>)).toList(),
  consumersTotalCount: json['consumers_total_count'] != null ? (json['consumers_total_count'] as num).toDouble() : null,
  createdOn: json['created_on'] as String?,
  modifiedOn: json['modified_on'] as String?,
  producers: (json['producers'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => MqWorkerProducer.fromJson(v as Map<String, dynamic>), fromB: (v) => MqR2Producer.fromJson(v as Map<String, dynamic>),)).toList(),
  producersTotalCount: json['producers_total_count'] != null ? (json['producers_total_count'] as num).toDouble() : null,
  queueId: json['queue_id'] as String?,
  queueName: json['queue_name'] != null ? MqQueueName.fromJson(json['queue_name'] as String) : null,
  settings: json['settings'] != null ? MqQueueSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
); }

final List<MqConsumerResponse>? consumers;

final double? consumersTotalCount;

final String? createdOn;

final String? modifiedOn;

final List<MqProducer>? producers;

final double? producersTotalCount;

final String? queueId;

final MqQueueName? queueName;

final MqQueueSettings? settings;

Map<String, dynamic> toJson() { return {
  if (consumers != null) 'consumers': consumers?.map((e) => e.toJson()).toList(),
  'consumers_total_count': ?consumersTotalCount,
  'created_on': ?createdOn,
  'modified_on': ?modifiedOn,
  if (producers != null) 'producers': producers?.map((e) => e.toJson()).toList(),
  'producers_total_count': ?producersTotalCount,
  'queue_id': ?queueId,
  if (queueName != null) 'queue_name': queueName?.toJson(),
  if (settings != null) 'settings': settings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'consumers', 'consumers_total_count', 'created_on', 'modified_on', 'producers', 'producers_total_count', 'queue_id', 'queue_name', 'settings'}.contains(key)); } 
MqQueue copyWith({List<MqConsumerResponse> Function()? consumers, double Function()? consumersTotalCount, String Function()? createdOn, String Function()? modifiedOn, List<MqProducer> Function()? producers, double Function()? producersTotalCount, String Function()? queueId, MqQueueName Function()? queueName, MqQueueSettings Function()? settings, }) { return MqQueue(
  consumers: consumers != null ? consumers() : this.consumers,
  consumersTotalCount: consumersTotalCount != null ? consumersTotalCount() : this.consumersTotalCount,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  producers: producers != null ? producers() : this.producers,
  producersTotalCount: producersTotalCount != null ? producersTotalCount() : this.producersTotalCount,
  queueId: queueId != null ? queueId() : this.queueId,
  queueName: queueName != null ? queueName() : this.queueName,
  settings: settings != null ? settings() : this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqQueue &&
          listEquals(consumers, other.consumers) &&
          consumersTotalCount == other.consumersTotalCount &&
          createdOn == other.createdOn &&
          modifiedOn == other.modifiedOn &&
          listEquals(producers, other.producers) &&
          producersTotalCount == other.producersTotalCount &&
          queueId == other.queueId &&
          queueName == other.queueName &&
          settings == other.settings; } 
@override int get hashCode { return Object.hash(Object.hashAll(consumers ?? const []), consumersTotalCount, createdOn, modifiedOn, Object.hashAll(producers ?? const []), producersTotalCount, queueId, queueName, settings); } 
@override String toString() { return 'MqQueue(consumers: $consumers, consumersTotalCount: $consumersTotalCount, createdOn: $createdOn, modifiedOn: $modifiedOn, producers: $producers, producersTotalCount: $producersTotalCount, queueId: $queueId, queueName: $queueName, settings: $settings)'; } 
 }
