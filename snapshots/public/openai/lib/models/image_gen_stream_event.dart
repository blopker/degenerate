// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'image_gen_completed_event.dart';import 'image_gen_partial_image_event.dart';sealed class ImageGenStreamEvent {const ImageGenStreamEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ImageGenStreamEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'image_generation.partial_image' => ImageGenStreamEventImageGenerationPartialImage.fromJson(json),
  'image_generation.completed' => ImageGenStreamEventImageGenerationCompleted.fromJson(json),
  _ => ImageGenStreamEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ImageGenStreamEvent$Unknown; } 
 }
@immutable final class ImageGenStreamEventImageGenerationPartialImage extends ImageGenStreamEvent {const ImageGenStreamEventImageGenerationPartialImage(this.imageGenPartialImageEvent);

factory ImageGenStreamEventImageGenerationPartialImage.fromJson(Map<String, dynamic> json) { return ImageGenStreamEventImageGenerationPartialImage(ImageGenPartialImageEvent.fromJson(json)); }

final ImageGenPartialImageEvent imageGenPartialImageEvent;

@override String get type { return 'image_generation.partial_image'; } 
@override Map<String, dynamic> toJson() { return {...imageGenPartialImageEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenStreamEventImageGenerationPartialImage && imageGenPartialImageEvent == other.imageGenPartialImageEvent; } 
@override int get hashCode { return imageGenPartialImageEvent.hashCode; } 
@override String toString() { return 'ImageGenStreamEventImageGenerationPartialImage(imageGenPartialImageEvent: $imageGenPartialImageEvent)'; } 
 }
@immutable final class ImageGenStreamEventImageGenerationCompleted extends ImageGenStreamEvent {const ImageGenStreamEventImageGenerationCompleted(this.imageGenCompletedEvent);

factory ImageGenStreamEventImageGenerationCompleted.fromJson(Map<String, dynamic> json) { return ImageGenStreamEventImageGenerationCompleted(ImageGenCompletedEvent.fromJson(json)); }

final ImageGenCompletedEvent imageGenCompletedEvent;

@override String get type { return 'image_generation.completed'; } 
@override Map<String, dynamic> toJson() { return {...imageGenCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenStreamEventImageGenerationCompleted && imageGenCompletedEvent == other.imageGenCompletedEvent; } 
@override int get hashCode { return imageGenCompletedEvent.hashCode; } 
@override String toString() { return 'ImageGenStreamEventImageGenerationCompleted(imageGenCompletedEvent: $imageGenCompletedEvent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ImageGenStreamEvent$Unknown extends ImageGenStreamEvent {const ImageGenStreamEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenStreamEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ImageGenStreamEvent.unknown($json)'; } 
 }
