class Registrationform {
  String p_name,email;
  int p_age;
  String p_phoneno;
  Registrationform(String p_name,String email,int p_age,String p_phoneno) {
    this.p_name = p_name;
    this.email = email;
    this.p_age = p_age;
    this.p_phoneno = p_phoneno;
  }
void getRegistrationDetails() {
  print(p_name);
  print(email);
  print(p_age);
  print(p_phoneno);
}

}