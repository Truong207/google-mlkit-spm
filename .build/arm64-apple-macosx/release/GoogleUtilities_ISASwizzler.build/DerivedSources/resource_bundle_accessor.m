#import <Foundation/Foundation.h>

NSBundle* GoogleUtilities_ISASwizzler_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"GoogleUtilities_GoogleUtilities-ISASwizzler.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/sapo/Data/truongdv/google-mlkit-spm/.build/arm64-apple-macosx/release/GoogleUtilities_GoogleUtilities-ISASwizzler.bundle"];
    }

    return preferredBundle;
}