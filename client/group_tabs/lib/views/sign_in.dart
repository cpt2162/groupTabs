import 'package:flutter/material.dart';
import 'package:group_tabs/views/tabs/tab_list_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _errorText = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const TabListPage()));
    }
  }

  // String? _validateUsername(String value) {
  //   if (value.isEmpty) {
  //     return 'Please enter your username';
  //   }
  //   // You can add more complex email validation logic here if needed
  //   return null;
  // }

  // String? _validatePassword(String value) {
  //   if (value.isEmpty) {
  //     return 'Please enter your password';
  //   }
  //   // You can add more complex password validation logic here if needed
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text("groupTabs"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: SizedBox(
                    height: 150.0,
                    width: 190.0,
                    child: Image.asset('assets/images/logo.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter a username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a username";
                  }
                  return null;
                },
                onSaved: (value) => _username = value!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter a password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a password";
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
              ),
            ),
            Text(
              _errorText,
              style: const TextStyle(color: Colors.red),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.green[800], fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: _submit,
                child: const Text('Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const CreateAccount()));
                  },
                  child: const Text(
                    'New User? Create Account',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _createFormKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _passwordconf = '';
  String _errorText = '';

  void _submit() {
    if (_createFormKey.currentState!.validate()) {
      _createFormKey.currentState!.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const TabListPage()));
    }
  }

  // String? _validateUsername(String value) {
  //   if (value.isEmpty) {
  //     return 'Please enter your username';
  //   }
  //   // You can add more complex email validation logic here if needed
  //   return null;
  // }

  // String? _validatePassword(String value) {
  //   if (value.isEmpty) {
  //     return 'Please enter your password';
  //   }
  //   // You can add more complex password validation logic here if needed
  //   return null;
  // }

  // String? _validatePasswordConf(String value) {
  //   if (value.isEmpty) {
  //     return 'Please confirm your password';
  //   }
  //   if(value != _password){
  //     return 'Passwords do not match';
  //   }
  //   // You can add more complex password validation logic here if needed
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text("groupTabs"),
      ),
      body: Form(
        key: _createFormKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: SizedBox(
                    height: 150.0,
                    width: 190.0,
                    child: Image.asset('assets/images/logo.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter a username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a username";
                  }
                  return null;
                },
                onChanged: (value) => _username = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter a password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a password";
                  }
                  return null;
                },
                onChanged: (value) => _password = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password Confirmation',
                    hintText: 'Confirm your password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please confirm your password";
                  }
                  if (value != _password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onChanged: (value) => _passwordconf = value,
              ),
            ),
            Text(
              _errorText,
              style: const TextStyle(color: Colors.red),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: _submit,
                child: const Text('Create Account',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignIn()));
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
