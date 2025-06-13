#import <Foundation/Foundation.h>

NSBundle* FBLPromises_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"Promises_FBLPromises.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/sapo/Data/truongdv/google-mlkit-spm/.build/arm64-apple-macosx/release/Promises_FBLPromises.bundle"];
    }

    return preferredBundle;
}