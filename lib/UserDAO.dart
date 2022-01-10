import 'package:floor_eg1/user_database.dart';

import 'User.dart';
import 'package:floor/floor.dart';

@dao
abstract class UserDAO {
  @insert
  Future<List<int>> insertUser(List<User> user);

  @Query('SELECT * FROM User')
  Future<List<User>> retrieveUsers();

  @Query('DELETE FROM User WHERE id=:id')
  Future<User?> deleteUser(int id);
}
