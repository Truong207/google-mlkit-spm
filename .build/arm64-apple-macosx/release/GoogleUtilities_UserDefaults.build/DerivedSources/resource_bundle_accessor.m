#import <Foundation/Foundation.h>

NSBundle* GoogleUtilities_UserDefaults_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"GoogleUtilities_GoogleUtilities-UserDefaults.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/sapo/Data/truongdv/google-mlkit-spm/.build/arm64-apple-macosx/release/GoogleUtilities_GoogleUtilities-UserDefaults.bundle"];
    }

    return preferredBundle;
}