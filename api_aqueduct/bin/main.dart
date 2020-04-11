import 'package:api_aqueduct/api_aqueduct.dart';
import 'package:api_aqueduct/models/users.dart';

Future main() async {
  await db.open();

  final app = Application<ApiAqueductChannel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 3000;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}