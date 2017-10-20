# MFProgressHUD
Progress HUD library based on MBProgressHUD


## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```
$ gem install cocoapods
```


To integrate LPProgressHUD into your Xcode project using CocoaPods, specify it in your `Podfile `:

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>'  do
pod 'MFProgressHUD', '~> 1.0.0’
end
```

Then, run the following command:

```
$ pod install
```

## Usage
Use MBProgressHUD to set up on the main thread and then switch the task to be performed to the new thread.

```
let hud = MFProgressHUD.show(to: view, animated: true)
DispatchQueue.global().async {
	// Do something...
	DispatchQueue.main.sync {
		hud.hide(animated: true)
	}
}
```
