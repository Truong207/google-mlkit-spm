#import <Foundation/Foundation.h>

NSBundle* GoogleDataTransport_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"GoogleDataTransport_GoogleDataTransport.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/sapo/Data/truongdv/google-mlkit-spm/.build/arm64-apple-macosx/release/GoogleDataTransport_GoogleDataTransport.bundle"];
    }

    return preferredBundle;
}