import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController confirmPasswordTextController = TextEditingController();
  String gender;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        title: Text("LOGIN", style: TextStyle(color: Colors.red.shade700)),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/a2.jpeg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180.0),
            child: Center(
              child: Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: _emailTextController,
                              decoration: InputDecoration(
                                hintText: "Votre adresse e-mail svp",
                                labelText: "Email",
                                filled: true,
                                border: UnderlineInputBorder(),
                                icon: Icon(Icons.alternate_email),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  Pattern pattern =
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                  RegExp regex = new RegExp(pattern);
                                  if (!regex.hasMatch(value))
                                    return 'vérifiez que votre àdresse mail est valide';
                                  else
                                    return null;
                                }
                              },
                            ),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: _nameTextController,
                              decoration: InputDecoration(
                                hintText: "Votre pseudo svp",
                                labelText: "Nom",
                                filled: true,
                                border: UnderlineInputBorder(),
                                icon: Icon(Icons.person_outline),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: passwordTextController,
                              decoration: InputDecoration(
                                hintText: "Saisir le mot de passe",
                                labelText: "Mot de passe",
                                filled: true,
                                border: UnderlineInputBorder(),
                                icon: Icon(Icons.lock_outline),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Mot de passe ne peut etre vide";
                                } else if (value.length < 6) {
                                  return "Trop court: 6 caractères minimum";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: confirmPasswordTextController,
                              decoration: InputDecoration(
                                hintText: "Rettapper le mot de passe",
                                labelText: "Confirmer mot de passe",
                                filled: true,
                                border: UnderlineInputBorder(),
                                icon: Icon(Icons.lock_outline),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Mot de passe ne peut etre vide";
                                } else if (value.length < 6) {
                                  return "Trop court: 6 caractères minimum";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red,
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Enregistrer",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Se connecter",
                              style: TextStyle(color: Colors.red),
                              textAlign: TextAlign.end,
                            ),
                          ))
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
