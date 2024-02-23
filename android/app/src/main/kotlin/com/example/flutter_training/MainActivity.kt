package com.example.flutter_training

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterFragmentActivity()  {

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine)
    {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
