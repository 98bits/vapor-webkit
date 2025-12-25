# Vapor WebKit

Vapor WebKit is a Vapor Swift Web Starter Kit.

## 💦 Dependencies

Open your projects `Package.swift` file and add Vapor WebKit as a dependency.

``dependencies: [``

```bash
// ✨ Vapor Swift Web Starter Kit
.package(url: "https://github.com/98bits/vapor-webkit.git", from: "1.0.0"),
```

``],``

## ⭐ Target Dependencies

Open your projects `Package.swift` file and add Vapor WebKit as a target dependency.

``targets: [ .executableTarget( ... dependencies: [``

```bash
.product(name: "VaporWebKit", package: "vapor-webkit"),
```

``], ... ), ... ]``

## 💠 Usage

Open your projects `configure.swift` file.

```bash
import VaporWebKit
```

``public func configure(_ app: Application) async throws {``

```bash
let vaporWebKitLibraryInstance = VaporWebKitLibrary()
print(vaporWebKitLibraryInstance.package)
print(vaporWebKitLibraryInstance.copyright())

app.leaf.tags["year"] = YearTag()
```

``}``

Run the project and view the messages that are printed in the console.

### Tags

#### YearTag

To use the **YearTag** add `#year()` to a *.leaf* file.
