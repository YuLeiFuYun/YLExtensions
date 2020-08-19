# YLExtensions
When a UITableView or UICollectionView page contains multiple types of cells, registering and configuring the cells requires writing a lot of boilerplate code. YLExtensions simplifies these processes by adding extensions to UITableView and UICollectionView.



## Requirements

* iOS 13.0+
* Xcode 11+
* Swift 5.1+



## Installation

### Cocoapods

To integrate YLExtensions into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'YLExtensions'
```

Run `pod install` to build your dependencies.



## Usage

In SomeModel.swift:

```swift
import YLExtensions

// Let SomeModel adopts and conforms to the ModelType protocol
extension SomeModel: ModelType {
    var tCells: [UITableViewCell.Type]? {
        [ACell.self, BCell.self]
    }
    
    var tNibs: [UITableViewCell.Type]? {
        [CCell.self, DCell.self]
    }
    
    var tAll: [UITableViewCell.Type]? {
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

// 2. Register cell
override func viewDidLoad() {
    super.viewDidLoad()
    ...
    tableView.registerCells(with: someModel.tCells!)
    tableView.registerNibs(with: someModel.tNibs!)
}

// 3. Unified creation and configuration of cells
// Note: You can only write that if cells of the same species are all together!
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(for: indexPath, with: someModel.tAll!)
    cell.configure(someModel.data![indexPath.section][indexPath.row])
    return cell
}
```



## License

TCExtensions is released under the MIT license. See LICENSE for details.