#import <Foundation/Foundation.h>

NSBundle* GoogleUtilities_AppDelegateSwizzler_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"GoogleUtilities_GoogleUtilities-AppDelegateSwizzler.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/sapo/Data/truongdv/google-mlkit-spm/.build/arm64-apple-macosx/release/GoogleUtilities_GoogleUtilities-AppDelegateSwizzler.bundle"];
    }

    return preferredBundle;
}