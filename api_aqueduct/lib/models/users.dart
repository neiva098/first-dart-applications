import 'package:mongo_dart/mongo_dart.dart';


final Db db = Db("mongodb://localhost:27017/tindDev");

final DbCollection usersCollection = db.collection('users');


