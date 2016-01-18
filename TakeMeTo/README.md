# TakeMeTo

Shows a world map centered on the current user location. If the user selects a country the map then centers on it and drops an annotation pin in its geopgraphical center point (country info provided by the [CIA World Factbook](https://www.cia.gov/library/publications/the-world-factbook/)).

Things learned:

* Maps
  * [MapKit](https://developer.apple.com/library/ios/documentation/MapKit/Reference/MapKit_Framework_Reference/)
  * [MKAnnotation](https://developer.apple.com/library/ios/documentation/MapKit/Reference/MKAnnotation_Protocol/index.html#//apple_ref/occ/intf/MKAnnotation)
* Location management, location authorization
  * [CoreLocation](https://developer.apple.com/library/ios/documentation/CoreLocation/Reference/CoreLocation_Framework/)
  * [CLLocationManager](https://developer.apple.com/library/ios/documentation/CoreLocation/Reference/CLLocationManager_Class/index.html#//apple_ref/occ/cl/CLLocationManager)
  * [CLLocationManagerDelegate](https://developer.apple.com/library/ios/documentation/CoreLocation/Reference/CLLocationManagerDelegate_Protocol/index.html#//apple_ref/occ/intf/CLLocationManagerDelegate)
* Table views
  * [UITableView](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableView_Class/)
  * [UITableViewDelegate](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableViewDelegate_Protocol/)
  * [UITableViewDataSource](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableViewDataSource_Protocol/)
  * section index
* Table view searching
  * [UISearchController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISearchController/)
  * [UISearchResultsUpdating](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISearchResultsUpdating_ClassRef/)

Screenshots:

![TakeMeTo](/TakeMeTo/screenshots/takemeto.png?raw=true)
![TakeMeTo country list](/TakeMeTo/screenshots/takemeto_countries.png?raw=true)
![TakeMeTo country search](/TakeMeTo/screenshots/takemeto_search.png?raw=true)
![TakeMeTo country search](/TakeMeTo/screenshots/takemeto_pin.png?raw=true)
