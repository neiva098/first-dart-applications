import 'package:api_aqueduct/models/users.dart';
import 'api_aqueduct.dart';


class ApiAqueductChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route("/users").linkFunction((request) async {
      final users = usersCollection.find();
      return Response.ok(users);
    });

    router.route('/').linkFunction((request) async {
      return Response.ok('Hello world')..contentType = ContentType.text;
    });

    return router;
  }
}
