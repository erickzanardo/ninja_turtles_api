import 'package:dart_frog/dart_frog.dart';
import 'package:route_issue/db.dart';

Response onRequest(RequestContext context, String id) {
  if (context.request.method == HttpMethod.get) {
    final turtle = db[id];
    if (turtle != null) {
      return Response.json(body: turtle);
    } else {
      return Response(body: 'Not found', statusCode: 404);
    }
  }
  return Response(body: 'Method not allowed', statusCode: 405);
}
