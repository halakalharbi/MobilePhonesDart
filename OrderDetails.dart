import 'MobilePhones.dart';

class OrderDetails {
  MobilePhones phone;
  String firstname;
  String lastname;
  String mobileType;

  OrderDetails(this.phone, this.firstname, this.lastname, this.mobileType);

  void printOrder() {
    print("Order Details:");
    print("First Name: $firstname");
    print("Last Name: $lastname");
    print("Mobile Type: $mobileType");
    phone.displayDetails();
  }
}
