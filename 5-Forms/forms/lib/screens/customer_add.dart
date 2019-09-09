import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/mixins/validation_mixin.dart';
import 'package:forms/models/customer.dart';

class CustomerAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomerAddState();
}

class CustomerAddState extends State with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  final customer = Customer();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            firstNameField(),
            lastNameField(),
            emailNameField(),
            passwordNameField(),
            submitButton()
          ],
        ),
      ),
    );
  }

  Widget firstNameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enes",
      ),
      validator: validateFirstName,
      onSaved: (String value) {
        customer.firstName = value;
      },
    );
  }

  Widget lastNameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Baysan",
      ),
      validator: validateLastName,
      onSaved: (String value) {
        customer.lastName = value;
      },
    );
  }

  Widget emailNameField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "example@example.com",
      ),
      validator: validateEmail,
      onSaved: (String value) => customer.email = value,
    );
  }

  Widget passwordNameField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "******",
      ),
      onSaved: (String value) => customer.password = value,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Save"),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          saveCustomer(customer);
        }
      },
    );
  }

  void saveCustomer(Customer customer) {
    print(customer.firstName);
  }
}
