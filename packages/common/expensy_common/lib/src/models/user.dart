class User {
  String? _email;
  String? _password;
  String? _fullName;
  String? _firstName;
  String? _lastName;
  String? _avatarPictureUrl;
  String? _userId;

  void setEmail(String? email) => _email = email;
  void setPassword(String? password) => _password = password;
  void setFullName(String? fullName) => _fullName = fullName;
  void setFirstName(String? firstName) => _firstName = firstName;
  void setLastName(String? lastName) => _lastName = lastName;
  void setAvatarPictureUrl(String? avatarPictureUrl) => _avatarPictureUrl = avatarPictureUrl;
  void setUserId(String? userId) => _userId = userId;

  String? getEmail() => _email;
  String? getPassword() => _password;
  String? getFullName() => _fullName;
  String? getFirstName() => _firstName;
  String? getLastName() => _lastName;
  String? getAvatarPictureUrl() => _avatarPictureUrl;
  String? getUserId() => _userId;

}