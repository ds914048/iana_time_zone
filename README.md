# iana_time_zone


Library for fetch IANA Time Zone (e.g. 'Asia/Kolkata')

## Import

```dart
import 'package:iana_time_zone/iana_time_zone.dart';
```

## Usage

```dart
String timeZone = await IanaTimeZone.getIanaTimeZone;
print(timeZone);  // 'Asia/Kolkata'
```

```dart
FutureBuilder(
future: IanaTimeZone.getIanaTimeZone,
builder:(context,snapshot){
            if(snapshot.connectionState==ConnectionState.done) {
              return Text('${snapshot.data}');
            }else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }  else{
              return const CircularProgressIndicator();
            }
          }
          )
```

