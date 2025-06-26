


class Account{
  String id;
  String name;
  String email;

  Account({required this.id, required this.name, required this.email});

  // Method to convert Account object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  // Factory method to create an Account object from a map
  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }}