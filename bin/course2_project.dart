import 'dart:io';

class Travel_Agency {
  var _id, _passenger_limit, _location, _price, trip_date;
  var l1 = ['12', 'Egypt', '30', '2021-02-08 00:00:00.000Z', 9000];
  var l2 = ['8 ', 'Canada', '15', '2021-03-05 00:00:00.000Z', 40000];
  var l3 = ['34', 'Albania', '5', '2021-04-16 00:00:00.000Z', 8000];
  var l4 = ['45', 'Australia', '3', '2021-07-23 00:00:00.000Z', 15000];
  var l5 = ['7 ', 'Greece', '14', '2021-11-18 00:00:00.000Z', 6000];

  ////////////////////////////////////////////////////////
  Travel_Agency(); //Default constractor
  /////////////////////////////////////////////////////////
  void add_trip() async {
    var y, m, d;
    /////////////////////////////////
    print('Enter the id of the trip: ');
    _id = stdin.readLineSync();

    print('Enter the location of the trip: ');
    _location = stdin.readLineSync();

    print('Enter the number of passengers: ');
    _passenger_limit = stdin.readLineSync();

    print('Enter the date of the trip: ');

    print(' ' * 20);
    print('- Year: ');
    y = int.parse(stdin.readLineSync());

    print('- Month: ');
    m = int.parse(stdin.readLineSync());

    print('- Day: ');
    d = int.parse(stdin.readLineSync());

    trip_date = DateTime.utc(y, m, d);

    print('Enter the price of the trip: ');
    _price = stdin.readLineSync();

    List list = [
      '',
      _id,
      _location,
      _passenger_limit,
      trip_date,
      _price,
    ];

    var open = await File('file.txt')
        .openWrite(mode: FileMode.append)
        .writeAll(list, '|');
    open = File('file.txt').openWrite(mode: FileMode.append).write('\n');
  }

/////////////////////////////////////////////////////////
  void edit_trip() {
    var x, id, y, m, d;
    var list = [
      _id = '8',
      _location = 'Canada',
      _passenger_limit = '90',
      trip_date = ' 2021 - 07 - 20',
      _price = '10000',
    ];
    print('Choose the field you wanna change . ');
    print(
        '\t \t \t1-ID.\t \t 2-Location.\t \t 3-Passenger Limit.\t \t 4-Trip Date.\t \t 5-Price.');

    x = int.parse(stdin.readLineSync());

    switch (x) {
      case 1:
        {
          print('_' * 40);
          print('Enter the new ID:');
          id = stdin.readLineSync();
          print('- New ID is: ' + id);
          print('- Location: ' + list[1]);

          print('- Passenger Limit: ' + list[2]);
          print('- Trip Date: ' + list[3]);
          print('- Price: ' + list[4]);
          print('_' * 40);
        }
        break;
      case 2:
        {
          print('_' * 40);
          print('Enter the new Location:');
          _location = stdin.readLineSync();
          print('- ID is: ' + list[0]);
          print('- Location: ' + _location);

          print('- New Passenger Limit: ' + list[2]);
          print('- Trip Date: ' + list[3]);
          print('- Price: ' + list[4]);
          print('_' * 40);
        }
        break;
      case 3:
        {
          print('_' * 40);
          print('Enter the new Passenger limit:');
          _passenger_limit = stdin.readLineSync();
          print('- ID is: ' + list[0]);
          print('- Location: ' + list[1]);

          print('- Passenger Limit: ' + _passenger_limit);
          print('- Trip Date: ' + list[3]);
          print('- Price: ' + list[4]);
          print('_' * 40);
        }
        break;
      case 4:
        {
          print('_' * 40);
          print('Enter the new trip\'s date:');
          print('- Year: ');
          y = int.parse(stdin.readLineSync());

          print('- Month: ');
          m = int.parse(stdin.readLineSync());

          print('- Day: ');
          d = int.parse(stdin.readLineSync());

          trip_date = DateTime.utc(y, m, d);

          print('- ID is: ' + list[0]);
          print('- Location: ' + list[1]);

          print('- Passenger Limit: ' + list[2]);
          print('- New Date: ');
          print(trip_date);
          print('- Price: ' + list[4]);
          print('_' * 40);
        }
        break;
      case 5:
        {
          print('_' * 40);
          print('Enter the new Price:');
          _price = stdin.readLineSync();
          print('- ID is: ' + list[0]);
          print('- Location: ' + list[1]);
          print('- Passenger Limit: ' + list[2]);
          print('- Trip Date: ' + list[3]);
          print('- New Price: ' + _price);
          print('_' * 40);
        }
        break;
    }
  }

//////////////////////////////////////////////////
  void deleteTrip() {
    var delete;
    List list = [
      _id = 8,
      _location = 'Paris',
      _passenger_limit = '90',
      trip_date = ' 2021 - 07 - 20',
      _price = '10000',
    ];
    print('Enter the ID of the trip to delete:');
    delete = int.parse(stdin.readLineSync());
    if (delete == _id) {
      list = [
        _id = '',
        _location = '',
        _passenger_limit = '',
        trip_date = '',
        _price = '',
      ];
      print('Trip deleted sucessfully.');
    } else {
      print('You entered invalid ID');
    }
  }

//////////////////////////////////////////////////
  void viewTrips() {
    var edit = File('file2.txt');
    print(edit.readAsStringSync() + '\n');
  }

///////////////////////////////////////////
  void search_trip() {
    var search;
    List list = [
      _id = '77',
      _location = 'Rome',
      _passenger_limit = '90',
      trip_date = ' 2021 - 09 - 23',
      _price = '30000',
    ];
    print('Enter the price of the trip to want:');
    search = stdin.readLineSync();
    if (search == _price) {
      print('- ID is: ' + list[0]);
      print('- Location: ' + list[1]);
      print('- Passenger Limit: ' + list[2]);
      print('- Trip Date: ' + list[3]);
      print('- Price: ' + list[4]);
      print('_' * 40);
    } else {
      print('There aren\'t trips by the entered price');
    }
  }

/////////////////////////////////////////
  void reserve() {
    var r;
    var list = [
      _id = 45,
      _location = 'Italy',
      _passenger_limit = 2,
      trip_date = ' 2021 - 07 - 20',
      _price = '10000',
    ];
    print('Enter the ID of the trip to reserve:');
    r = int.parse(stdin.readLineSync());

    if (r == _id && _passenger_limit != 0) {
      while (_passenger_limit != 0) {
        print('The trip is $_passenger_limit places available!');

        print('want to reserve? - click Y');
        r = stdin.readLineSync();
        if (r == 'Y' || r == 'y') {
          _passenger_limit--;
          print('Reserved successfully');
        }
      }
      print('The trip full!');
    } else {
      print('Sorry,the trip not Available!');
    }
  }

  /////////////////////////////////////////////////////
  void discount() {
    var lDiscount = [l1[4], l2[4], l3[4], l4[4], l5[4]];
    var lDiscount2 = [l1, l2, l3, l4, l5];
    var e = [], lFinal = [];

    for (int i = 0; i < 5; i++) {
      if (10000 < lDiscount[i]) {
        e.add(i);
      }
    }
    print('Trip before discount:');
    for (int i = 0; i < e.length; i++) {
      var lFinal = lDiscount2[e[i]];
      print(lFinal);
      print('After discount: ');
      var lFinal2 = -((20 / 100) * lFinal[4]) + lFinal[4];
      print(lFinal2);
      print('_' * 20);
    }
  }

//////////////////////////////////////////////////
  void latest_trips() {
    List list = [
      _id,
      _location,
      _passenger_limit,
      trip_date,
      _price,
    ];
    var edit = File('file.txt');
    print(edit.readAsStringSync() + '\n');
  }

///////////////////////////////////////////////////
  void view_passengers() {
    var list = [l1[2], l2[2], l3[2], l4[2], l5[2]];
    var list2 = [l1[1], l2[1], l3[1], l4[1], l5[1]];
    var x;
    for (var i = 0; i < 5; i++) {
      print('$i-' +
          '  Trip to: ' +
          list2[i] +
          ' \t \tNumber of passengers:  ' +
          list[i]);
    }

    print('The total passengers of all trips: 67');
  }
}

File f = File('E:\\Flutter Projects\\course2_project\\file.txt');

void main() {
  print('_' * 155);
  print(' ' * 70 + 'Travel Agency');
  print('_' * 155);
  ///////////////////////////////

  var sign, x;
  Travel_Agency trv = new Travel_Agency();

  do {
    print('''
Choose the operation you want !\n \t \t \t \t 1- To add a trip.\t \t \t \t \t \t \t 2- To edit a trip\'s data.\n \t \t \t \t 3- To delete a trip.\t \t \t \t \t \t \t 4- To view all trips.\n \t \t \t \t 5- To search for a trip.\t \t \t \t  \t \t 6- To check the limit a trip.\n \t \t \t \t 7- To view trips with 20% discount.\t \t \t \t \t 8- To view 10 latest trips.\n \t \t \t \t 9- To view all trips\'s passengers. \t \t \t \t \t 10- Exit Program.''');

    x = int.parse(stdin.readLineSync());
    print('-' * 25);

    switch (x) {
      case 1:
        {
          trv.add_trip();
          print('A new trip added successfully!');
          break;
        }
      case 2:
        {
          trv.edit_trip();
          print('The trip updated successfully!');

          break;
        }
      case 3:
        {
          trv.deleteTrip();
          break;
        }
      case 4:
        {
          trv.viewTrips();

          break;
        }
      case 5:
        {
          trv.search_trip();
          break;
        }
      case 6:
        {
          trv.reserve();
          break;
        }
      case 7:
        {
          trv.discount();
          break;
        }
      case 8:
        {
          print('Last 10 trips: ');
          trv.latest_trips();
          break;
        }
      case 9:
        {
          trv.view_passengers();
          break;
        }
      case 10:
        {
          exit(0);
          break;
        }
      default:
        {
          print('You Entered a wrong value!');
          break;
        }
    }
    print('If you want another operation press Y ,otherwise press N ');

    sign = stdin.readLineSync();
    if (sign == 'n' || sign == 'N') {
      exit(0);
    }
    print('_' * 155);
  } while (true);
}
