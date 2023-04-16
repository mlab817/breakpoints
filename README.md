<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Make your app responsive by implementing breakpoints based on Boostrap 4.0+.

## Features

1. Get the screen width from BuildContext.
2. Get the current breakpoint.
3. Get the max width based on the current breakpoint. Max width can be modified by the user.

## Getting started

1. To use this plugin, add `bootstrap_breakpoints` as a dependency in your pubspec.yaml file.

```yaml
  dependencies:
    bootstrap_breakpoints:
```

or run:

```bash
flutter pub add bootstrap_breakpoints
```

2. Now in your Dart code, you can use:

```dart
import 'package:bootstrap_breakpoints/bootstrap_breakpoints.dart';
```

## Usage

See `/example` folder.
