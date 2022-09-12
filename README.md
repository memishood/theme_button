# ThemeButton

https://pub.dev/packages/theme_button

<h3>It ensures a switch widget for Night/Light theme modes</h3>

<img src="https://raw.githubusercontent.com/memishood/theme_button/main/sample.gif" height=200>

## Add Dependency
```yaml
dependencies:
  flutter:
    sdk: flutter
  # add theme_button
  theme_button: ^{latest version}
```

## Get Started

```dart
import 'package:theme_button/theme_button.dart';

ThemeButton(
    onChanged: (bool value) {
        // do stuff
    },
),
```

### Property

| Property        | Type         | Default Value            | Description                                                                 |
| --------------- | ------------ | ------------------------ | --------------------------------------------------------------------------- |
| width           | double       | 72                       | The width of the view                                                       |
| height          | double       | 72                       | The height of the view                                                      |
| padding         | EdgeInsets   | EdgeInsets.zero          | Animation padding                                                           |
| duration        | Duration     | 1 seconds                | Animation speed                                                             |
| onChanged       | Fun(value)   | null                     | It'll be called when the switch has been changed by the user                |
