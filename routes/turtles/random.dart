import 'dart:math';

import 'package:dart_frog/dart_frog.dart';
import 'package:route_issue/db.dart';

Response onRequest(RequestContext context) {
  if (context.request.method == HttpMethod.post) {
    final turtle = db.values.toList()[Random().nextInt(db.length)];
    return Response.json(body: turtle);
  }
  return Response(body: 'Method not allowed', statusCode: 405);
}
