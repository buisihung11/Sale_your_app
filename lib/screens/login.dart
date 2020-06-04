import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sale_your_food/screens/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                // Welcome
                WelcomeLogin(),
                // Form to Login
                LoginForm(),
                // Signup section
                SignupSection(),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupSection extends StatelessWidget {
  const SignupSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'Don\'t have account? ',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 13,
          ),
        ),
        TextSpan(
          text: 'Sign up',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ]),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your username',
              labelText: 'Enter username',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.isEmpty ? 'Please enter name' : null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'Your username',
              labelText: 'Enter password',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.isEmpty ? 'Please enter password' : null;
            },
          ),
          SizedBox(height: 15),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  top: 15,
                  bottom: 15,
                ),
                child: Text(
                  'Forgot Password',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color(0xFF467fd7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Container(
            width: 250,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              color: Color(0xffff9f0a),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                // side: BorderSide(color: Colors.red),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'OR',
              style: TextStyle(color: Colors.black38),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: const ShapeDecoration(
                  color: Colors.blue,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(FontAwesome.facebook),
                  color: Colors.white,
                  onPressed: () {
                    print('Login With FB');
                  },
                ),
              ),
              SizedBox(width: 15),
              Container(
                decoration: const ShapeDecoration(
                  color: Colors.redAccent,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(FontAwesome.google),
                  color: Colors.white,
                  onPressed: () {
                    print('Login With Google');
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WelcomeLogin extends StatelessWidget {
  const WelcomeLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to SYF',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis pellentesque metus id lacinia.',
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}