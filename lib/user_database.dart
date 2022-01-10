import 'dart:async';
import 'package:floor/floor.dart';
import 'User.dart';
import 'UserDAO.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'user_database.g.dart';

@Database(version: 1, entities: [User])
abstract class UserDatabase extends FloorDatabase {
  UserDAO get userDAO;
}
