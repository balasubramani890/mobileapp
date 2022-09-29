class LoginModel
{
  String? userName;
  String? password;

  loginMap()
  {
    var mapping =Map<String, dynamic>();
    mapping['userName']=userName!;
    mapping['password']=password!;
    return mapping;
  }

}