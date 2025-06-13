#import <Foundation/Foundation.h>

NSBundle* GTMSessionFetcherFull_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"GTMSessionFetcher_GTMSessionFetcherFull.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/sapo/Data/truongdv/google-mlkit-spm/.build/arm64-apple-macosx/release/GTMSessionFetcher_GTMSessionFetcherFull.bundle"];
    }

    return preferredBundle;
}