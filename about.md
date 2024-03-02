## 1. Research: Shared Preferences Flutter Package

- Keywords:
    - shared preferences flutter package example
    - shared preferences android
    - shared preferences flutter example
    - shared preferences react native
    - flutter shared preferences login example
    - shared preferences flutter package github
    - flutter local storage vs shared preferences
    - shared preferences pub dev
    - flutter shared preferences global
    - flutter shared preferences theme
    - flutter shared preferences listener example
    - shared preferences flutter with bloc
    - flutter keep user logged in using shared preferences
    - flutter keep user logged in using shared preferences react
    - shared preferences kotlin
    - shared preferences vs datastore
    - shared preferences android studio
    - encrypted shared preferences android
    - flutter shared preferences login example php

- Video Title: Keep User Logged In with Remember Me Password - Shared Preferences Flutter Package

## 2. Research: Competitors

**Flutter Videos/Articles**

- 64k: https://www.youtube.com/watch?v=szOllHT1S7Y
- 48k: https://www.youtube.com/watch?v=hiZcVbyukBo
- 79k: https://www.youtube.com/watch?v=sa_U0jffQII
- 12k: https://www.youtube.com/watch?v=0r_i9s9fZgo
- 44k: https://www.youtube.com/watch?v=jljwoxLOuSA
- 1k: https://www.youtube.com/watch?v=S_1QYvBUtw0
- 24k: https://www.youtube.com/watch?v=CFLR_6gB70A
- 1.8k: https://www.youtube.com/watch?v=FNKv_iYfchk
- 7k: https://www.youtube.com/watch?v=FNKv_iYfchk
- 20k: https://www.youtube.com/watch?v=hF9QTYBOngQ
- 20k: https://www.youtube.com/watch?v=1c-h3QBTl8w
- https://medium.flutterdevs.com/using-sharedpreferences-in-flutter-251755f07127
- https://medium.com/@ndubuisiaso/shared-preferences-in-flutter-a-guide-with-a-demonstrative-app-e03582ccce9a
- https://blog.logrocket.com/using-sharedpreferences-in-flutter-to-store-data-locally/
- https://www.cybrosys.com/blog/how-to-use-shared-preferences-in-flutter
- https://www.geeksforgeeks.org/read-and-write-data-in-flutter-using-sharedpreferences/
- https://nureddineraslan.medium.com/shared-preferences-package-in-flutter-473167cf93fc

**Android/Swift/React Videos**

- 23k: https://www.youtube.com/watch?v=3YNIxaE8sVY
- 3.7k: https://www.youtube.com/watch?v=3kYSATApwWs
- 10k: https://www.youtube.com/watch?v=Me22B6lR8Xc
- 79k: https://www.youtube.com/watch?v=sa_U0jffQII
- 48k: https://www.youtube.com/watch?v=hiZcVbyukBo
- 1.8k: https://www.youtube.com/watch?v=FNKv_iYfchk
- 70k: https://www.youtube.com/watch?v=sa_U0jffQII
- 20k: https://www.youtube.com/watch?v=hF9QTYBOngQ

**Great Features**

- Simple and Easy to Use: The package provides a straightforward API for storing and retrieving
  key-value pairs using methods like setString, getInt, etc.
- Persistent Storage: Data persists even after the app is closed or restarted, unlike temporary
  state held in variables.

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/49407237/sharedpreferences-error-in-flutter
- https://stackoverflow.com/questions/72955490/error-loading-data-when-using-shared-preferences-plugin-in-flutter-dart
- https://stackoverflow.com/questions/60427065/flutter-shared-preference-issue
- https://stackoverflow.com/questions/75264268/swift-compiler-error-xcode-no-such-module-shared-preferences-ios-flutter
- https://stackoverflow.com/questions/74160715/tried-to-add-shared-preference-for-two-dropdown-values-but-shows-then-error-fai
- https://stackoverflow.com/questions/57232612/flutter-flavor-for-ios-gives-sharedpreference-error-on-run
- https://stackoverflow.com/questions/tagged/flutter-sharedpreference?tab=Votes
- https://stackoverflow.com/questions/70445269/not-getting-updated-value-from-sharedpreferences

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. SignIn and Sign up UI
2. Firebase Integration using CLI
3. Remember Me checkbox to save user detail like uid from firebase, email, and password via shared
   preferences package

**The Structured Main Content**

1. Inside `main.dart` file, we are using FutureBuilder to initialize Firebase and avoid exceptions.
2. For the home parameter, we are calling `CheckStatus` class. Inside it, we are again using
   FutureBuilder to return `WelcomeScreen` or `ProfileScreen`.
    - If the saved uid is null, then return `WelcomeScreen` otherwise return `ProfileScreen`.
3. Inside `sign in screen.dart` file, onPressed parameter of signIn button.
    - Inside it, we are checking if the form is valid then call signInUser method.
    - We are using a try catch block to sign the user in.
    - We are calling signInWithEmailAndPassword method of firebase and passing the texts of email
      and password to it.
    - If the sign in is successful then navigate to `ProfileScreen`.
4. After hot restart, if i click on sign in button as a registered user then see here it navigates
   to the ProfileScreen.
    - Next, for remember me checkbox, we want to implement the remember functionality via flutter
      secure storage.
    - If the checkbox is checked then email, password, and userId should be saved.
    - We will use uid to automatically login the user.
    - And we will also save email and password to pre-fill the text fields.
5. So, let’s create rememberPassword boolean flag.
    - Then inside checkbox, set the value to rememberMe and for onChanged parameter, we are saving
      the new value in the rememberMe boolean flag when it is checked or unchecked
    - Now, inside sign in user method, we are checking if rememberMe is true then store the uid,
      email, and password of the user via flutter secure storage plugin.
    - Additionally, we need to see if the user saved their details.
    - If they did, let's fetch their email and password using Shared Preferences package of flutter.
    - If they're available, we'll automatically fill in the email and password fields.
    - Therefore, let’s create getUserDetail method.
    - We are reading uid, email, and password via flutter secure storage.
    - If they are not null then assign email and password to the text of their controllers.
    - And then call this method inside initState.

6. Inside profile screen, we want to delete the userId stored in flutter secure storage when user
   clicks on the log out icon.
