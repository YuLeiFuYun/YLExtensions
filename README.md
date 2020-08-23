# YLExtensions
Using YLEXtensions could get you out of massive boilerplate code when you want to register, configure a UITableView or UICollectionView page which contains multiple types of cells.



## Requirements

* iOS 13.0+
* Swift 5.1+



## Installation

### Cocoapods

To integrate YLExtensions into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '13.0'
use_frameworks!

target 'MyApp' do
  # your other pod
  # ...
  pod 'YLExtensions'
end
```

Run `pod install` to build your dependencies.

### Swift Package Manager

Select File > Swift Packages > Add Package Dependency. Enter `https://github.com/YuLeiFuYun/YLExtensions.git` in the "Choose Package Repository" dialog.



## Usage

In SomeModel.swift:

```swift
import YLExtensions

// Let SomeModel adopts and conforms to the ModelType protocol
extension SomeModel: ModelType {
    static var tCells: [UITableViewCell.Type]? {
        [ACell.self, BCell.self]
    }
    
    static var tNibs: [UITableViewCell.Type]? {
        [CCell.self, DCell.self]
    }
    
    static var tAll: [UITableViewCell.Type]? {
        // Sort by display order
        [ACell.self, BCell.self, CCell.self, DCell.self]
    }
    
    var data: [[Any]]? {
        [someA, someB, someC, someD]
    }
}
```

In SomeCell.swift:

```swift
class SomeCell: UITableViewCell {
    ...
    // Configure cell
    override func configure(_ model: Any?) {
        ...
    }
}
```

In SomeViewController.swift:

```swift
import YLExtensions

// 1. Create a model object
let someModel = SomeModel(someA: [A], someB: [B], someC: [C], someD: [D])

// 2. Register cells
override func viewDidLoad() {
    super.viewDidLoad()
    ...
    tableView.registerCells(with: SomeModel.tCells!)
    tableView.registerNibs(with: SomeModel.tNibs!)
}

// 3. Create and configure cells
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // Note: Only applies when cells of the same type are all together and the different types of cells are in different section.
    let cell = tableView.dequeueReusableCell(for: indexPath, with: SomeModel.tAll!)
    cell.configure(someModel.data![indexPath.section][indexPath.row])
    return cell
}
```



## License

YLExtensions is released under the MIT license. See LICENSE for details.