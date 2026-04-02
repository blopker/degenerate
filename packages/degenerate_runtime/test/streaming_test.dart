import 'dart:convert';

import 'package:degenerate_runtime/testing.dart';
import 'package:test/test.dart';

void main() {
  group('StreamedApiResponse', () {
    test('toApiResponse buffers the stream', () async {
      final response = StreamedApiResponse(
        statusCode: 200,
        headers: const {'content-type': 'text/event-stream'},
        byteStream: Stream.fromIterable([
          utf8.encode('hello '),
          utf8.encode('world'),
        ]),
      );

      final buffered = await response.toApiResponse();
      expect(buffered.statusCode, 200);
      expect(buffered.body, 'hello world');
    });

    test('isSuccessful checks 2xx', () {
      expect(
        const StreamedApiResponse(
          statusCode: 200,
          byteStream: Stream.empty(),
        ).isSuccessful,
        isTrue,
      );
      expect(
        const StreamedApiResponse(
          statusCode: 404,
          byteStream: Stream.empty(),
        ).isSuccessful,
        isFalse,
      );
    });
  });

  group('RecordingClient.sseResponse', () {
    test('creates valid SSE stream', () async {
      final response = RecordingClient.sseResponse(['{"id":1}', '{"id":2}']);

      final events = await parseSseStream(response.byteStream).toList();
      expect(events, hasLength(2));
      expect(jsonDecode(events[0].data), {'id': 1});
      expect(jsonDecode(events[1].data), {'id': 2});
    });
  });

  group('RecordingClient.sendStreaming', () {
    test('records request and returns streamed response', () async {
      final client = RecordingClient()
        ..nextStreamedResponse = RecordingClient.sseResponse([
          '{"chunk":"hello"}',
        ]);

      final response = await client.sendStreaming(
        const ApiRequest(method: 'POST', path: '/stream'),
      );

      expect(client.lastRequest!.method, 'POST');
      expect(client.lastRequest!.path, '/stream');
      expect(response.statusCode, 200);

      final events = await parseSseStream(response.byteStream).toList();
      expect(events, hasLength(1));
      expect(jsonDecode(events[0].data), {'chunk': 'hello'});
    });
  });

  group('ApiStreamError', () {
    test('toString includes status and body', () {
      const error = ApiStreamError(statusCode: 401, rawError: 'Unauthorized');
      expect(error.toString(), 'ApiStreamError(401, Unauthorized)');
    });
  });
}
