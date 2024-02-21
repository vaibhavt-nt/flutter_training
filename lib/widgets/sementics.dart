import 'package:flutter/material.dart';

class SemanticsWidgetDemo extends StatefulWidget {
  @override
  _SemanticsWidgetDemoState createState() => _SemanticsWidgetDemoState();
}

class _SemanticsWidgetDemoState extends State<SemanticsWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics Widget Demo'),
      ),
      body: Container(
        height: 300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Semantics Widget',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Semantics(
                  child: ClipOval(
                    child: CircleAvatar(
                      maxRadius: 70,
                      child: Image(image: NetworkImage('https://picsum.photos/250?image=9'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  label: 'Company logo',
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'MergeSemantics',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                MergeSemantics(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ListTile(
                        leading:
                        Icon(Icons.account_circle, semanticLabel: 'name'),
                        title: Text(
                          "John Doe",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          semanticLabel: 'email',
                        ),
                        title: Text(
                          "johndoe@test.com",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading:
                        Icon(Icons.business, semanticLabel: 'company name'),
                        title: Text(
                          "ABC Inc.",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}