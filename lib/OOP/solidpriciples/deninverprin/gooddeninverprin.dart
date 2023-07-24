abstract class DBConnectionInterface {
  connect();
}

class MySQLConnection implements DBConnectionInterface {
  @override
  connect() {}
}

class PasswordReminder {
  DBConnectionInterface dbConnectionInterface;
  PasswordReminder(this.dbConnectionInterface);
}


MySQLConnection ty=MySQLConnection();
final varut= PasswordReminder(ty);
