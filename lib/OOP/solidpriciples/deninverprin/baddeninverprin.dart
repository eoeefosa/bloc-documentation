/// Dependency inversion
/// entities must depend on abstractions
/// not on concreations
///
/// the high level module must not depend on the low
/// level module but they should depend on abstraction

class PasswordRemider {
  // mysqlconnection is the low level module
  // password reminder is the high levelmodule
  MySQLConnection dbconnection;
  PasswordRemider(this.dbconnection);
}

class MySQLConnection {}
