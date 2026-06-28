validInput(String value, int min, int max, String type) {
  if (value.isEmpty) {
    return "Can't be empty";
  }
  if (value.length < min) {
    return "Can't be less than $min";
  }
  if (value.length > max) {
    return "Can't be more than $max";
  }
  if (type == "email") {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (!emailValid) {
      return "Invalid email";
    }
  }
  if (type == "phone") {
    bool phoneValid = RegExp(r"^[0-9]{11}$").hasMatch(value);
    if (!phoneValid) {
      return "Invalid phone number";
    }
  }
  if (type == "password") {
    bool passwordValid = RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value);
    if (!passwordValid) {
      return "Password must contain at least 8 characters,one uppercase letter, one lowercase letter, one number and one special character";
    }
  }
  if (type == "username") {
    bool usernameValid = RegExp(r'^[a-zA-Z0-9_]{3,15}$').hasMatch(value);
    if (!usernameValid) {
      return "Username must be 3-15 characters long and can only contain letters, numbers and underscores";
    }
  }
  return null; // If no validation errors
}