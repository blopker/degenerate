// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'image_edit_completed_event.dart';import 'image_edit_partial_image_event.dart';sealed class ImageEditStreamEvent {const ImageEditStreamEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ImageEditStreamEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'image_edit.partial_image' => ImageEditStreamEventImageEditPartialImage.fromJson(json),
  'image_edit.completed' => ImageEditStreamEventImageEditCompleted.fromJson(json),
  _ => ImageEditStreamEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ImageEditStreamEvent$Unknown; } 
 }
@immutable final class ImageEditStreamEventImageEditPartialImage extends ImageEditStreamEvent {const ImageEditStreamEventImageEditPartialImage(this.imageEditPartialImageEvent);

factory ImageEditStreamEventImageEditPartialImage.fromJson(Map<String, dynamic> json) { return ImageEditStreamEventImageEditPartialImage(ImageEditPartialImageEvent.fromJson(json)); }

final ImageEditPartialImageEvent imageEditPartialImageEvent;

@override String get type { return 'image_edit.partial_image'; } 
@override Map<String, dynamic> toJson() { return {...imageEditPartialImageEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditStreamEventImageEditPartialImage && imageEditPartialImageEvent == other.imageEditPartialImageEvent; } 
@override int get hashCode { return imageEditPartialImageEvent.hashCode; } 
@override String toString() { return 'ImageEditStreamEventImageEditPartialImage(imageEditPartialImageEvent: $imageEditPartialImageEvent)'; } 
 }
@immutable final class ImageEditStreamEventImageEditCompleted extends ImageEditStreamEvent {const ImageEditStreamEventImageEditCompleted(this.imageEditCompletedEvent);

factory ImageEditStreamEventImageEditCompleted.fromJson(Map<String, dynamic> json) { return ImageEditStreamEventImageEditCompleted(ImageEditCompletedEvent.fromJson(json)); }

final ImageEditCompletedEvent imageEditCompletedEvent;

@override String get type { return 'image_edit.completed'; } 
@override Map<String, dynamic> toJson() { return {...imageEditCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditStreamEventImageEditCompleted && imageEditCompletedEvent == other.imageEditCompletedEvent; } 
@override int get hashCode { return imageEditCompletedEvent.hashCode; } 
@override String toString() { return 'ImageEditStreamEventImageEditCompleted(imageEditCompletedEvent: $imageEditCompletedEvent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ImageEditStreamEvent$Unknown extends ImageEditStreamEvent {const ImageEditStreamEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditStreamEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ImageEditStreamEvent.unknown($json)'; } 
 }
