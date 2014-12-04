# ar_dispatch

Make the Foundation dispatch_xxx_ functions run normally async code synchronously in tests

[![CI Status](http://img.shields.io/travis/orta/ar_dispatch.svg?style=flat)](https://travis-ci.org/Orta Therox/ar_dispatch)
[![Version](https://img.shields.io/cocoapods/v/ar_dispatch.svg?style=flat)](http://cocoadocs.org/docsets/ar_dispatch)
[![License](https://img.shields.io/cocoapods/l/ar_dispatch.svg?style=flat)](http://cocoadocs.org/docsets/ar_dispatch)
[![Platform](https://img.shields.io/cocoapods/p/ar_dispatch.svg?style=flat)](http://cocoadocs.org/docsets/ar_dispatch)

## What is does

Adds a collection of methods around the dispatch queue that will run synchronously when being ran in a test target, but will act asynchronously in application targets. Tested.

``` objc
    /// Async in App Code, sync in Test Code, waits for a time then runs the block on the main queue
    extern void ar_dispatch_after(NSTimeInterval time, dispatch_block_t block);

    /// Async in App Code, sync in Test Code, waits for a time then runs the block on your own queue
    extern void ar_dispatch_after_on_queue(NSTimeInterval time, dispatch_queue_t queue, dispatch_block_t block);

    /// Async in App Code, sync in Test Code, runs a block on a default queue on another thread
    extern void ar_dispatch_async(dispatch_block_t block);

    /// Async in App Code, sync in Test Code, runs a block on the main thread
    extern void ar_dispatch_main_queue(dispatch_block_t block);

    /// Async in App Code, sync in Test Code, runs block on a queue
    extern void ar_dispatch_on_queue(dispatch_queue_t queue, dispatch_block_t block);

```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

ar_dispatch is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "ar_dispatch"

## Author

Orta Therox, orta.therox@gmail.com

## License

ar_dispatch is available under the MIT license. See the LICENSE file for more info.