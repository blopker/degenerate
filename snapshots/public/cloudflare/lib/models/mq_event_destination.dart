// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_event_destination_queue.dart';/// A value that is one of: `MqEventDestinationQueue`.
sealed class MqEventDestination {const MqEventDestination();

factory MqEventDestination.fromJson(Map<String, dynamic> json) {   if (MqEventDestinationQueue.canParse(json)) {
    return MqEventDestinationMqEventDestinationQueue(MqEventDestinationQueue.fromJson(json));
  }
  return MqEventDestination$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class MqEventDestinationMqEventDestinationQueue extends MqEventDestination {const MqEventDestinationMqEventDestinationQueue(this._value);

final MqEventDestinationQueue _value;

@override MqEventDestinationQueue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventDestinationMqEventDestinationQueue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MqEventDestination.mqEventDestinationQueue($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class MqEventDestination$Unknown extends MqEventDestination {const MqEventDestination$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventDestination$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MqEventDestination.unknown($_value)'; } 
 }
