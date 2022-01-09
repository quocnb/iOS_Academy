# SwiftUI: Custom View Transition Tutorial

### Ideal

1. Using ZStack for save 2 view
2. Catch TapGuesture
3. Using tapped State variable for switch view

```Swift
@State var tapped
```

```
ZStack {
    if !tapped {
        CustomView(width: 200, background: Color(.systemBlue))
    } else {
        CustomView(width: 350, background: Color(.systemPink), fullHeight: true)
    }
}
.onTapGesture {
    withAnimation {
        tapped.toggle()
    }
}
```

### References
Link youtube: https://www.youtube.com/watch?v=gSZMqTxAJRU