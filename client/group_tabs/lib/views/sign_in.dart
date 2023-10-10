import 'package:flutter/material.dart';
import 'package:group_tabs/views/tabs/tab_list.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text("groupTabs"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: SizedBox(
            child: Stack(
              children: [
                Container(
                    width: 300,
                    height: 400,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Text('Sign In'),
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                          ),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        ElevatedButton(
                          child: const Text('Sign In'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const TabList()));
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () => print('pressed'),
                                child: Text('Forgot Password')),
                            TextButton(
                                onPressed: () => print('pressed'),
                                child: Text('Sign Up'))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
