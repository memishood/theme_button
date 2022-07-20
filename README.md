# ThemeButton

<h3>It ensures a switch widget for Night/Light theme modes</h3>

<img src="https://github.com/memishood/theme_button/blob/main/sample.gif" height=200>

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

| Property        | Type         | Default Value        | Description                                                                 |
| --------------- | ------------ | -------------------- | --------------------------------------------------------------------------- |
| width           | double       | 72                   | The width of the view                                                       |
| height          | double       | 72                   | The height of the view                                                      |
| padding         | EdgeInsets   | EdgeInsets.zero      | Animation padding                                                           |
| duration        | Duration     | Duration(seconds: 1) | Animation speed                                                             |
| onChanged       | Fun(value)   | null                 | It'll be called when the switch has been changed by the user                |
