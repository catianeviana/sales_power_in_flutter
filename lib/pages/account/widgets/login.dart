import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final focus = FocusScope.of(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0),
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 50,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12.0, bottom: 100),
            child: Center(
              child: Text(
                "Sales Power",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                "EMAIL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            child: Expanded(
              child: TextField(
                textInputAction: TextInputAction.next,
                onEditingComplete: () => focus.nextFocus(),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'exemplo@email.com',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Divider(
            height: 32.0,
          ),
          Row(
            children: <Widget>[
              Text(
                "SENHA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                onEditingComplete: () => focus.unfocus(),
                obscureText: true,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '********',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Divider(
            height: 32.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () => {},
                child: Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 40.0),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () => {
                      Navigator.pushReplacementNamed(context, '/main'),
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 12.0,
                      ),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
