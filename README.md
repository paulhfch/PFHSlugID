# PFHSlugID - Compressed UUIDs
An iOS static library for generating UUIDs and encode them in URL-safe base64 (See RFC 4648 sec. 5). The compressed UUIDs are always 22 characters on the following form [a-Z0-9_-]{22}. This is useful for small unique slugs.

PFHSlugID is a Objective-C port of [slugid](https://github.com/jonasfj/slugid).

# Installing PFHSlugID
PFHSlugID can be installed by using [CocoaPods](https://guides.cocoapods.org/using/getting-started.html):

```
pod 'PFHSlugID', '~> 1.0.0'
```

# Encode/Decode
```
// Generate URL-safe base64 encoded UUID version 4 (random)
NSString *slug = [PFHSlugID v4];

// Get UUID in the form xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
NSUUID *decodedUuid = [PFHSlugID decode:slug];

// Compress to slug again
XCTAssertTrue( [[PFHSlugID encode:decodedUuid]isEqualToString:slug] );
```

#License
The PFHSlugID library is released on the MIT license, see the LICENSE for complete license.
