# HostingView
A UIView subclass to quickly use a SwiftUI View.

## Example

```swift
lazy var title: HostingView = {
  return HostingView {
    Text("Hello")
  }
}()
```

Then simply add the subview and constraints to the parent view.
