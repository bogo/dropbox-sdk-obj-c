///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGRequestedVisibility;

/// 
/// The `DBXSHARINGRequestedVisibility` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// The access permission that can be requested by the caller for the shared
/// link. Note that the final resolved visibility of the shared link takes into
/// account other aspects, such as team and shared folder settings. Check the
/// ResolvedVisibility for more info on the possible resolved visibility values
/// of shared links.
/// 
@interface DBXSHARINGRequestedVisibility : NSObject <DBXSerializable> 

/// The `DBXSHARINGRequestedVisibilityTag` enum type represents the possible tag
/// states that the `DBXSHARINGRequestedVisibility` union can exist in.
typedef NS_ENUM(NSInteger, DBXSHARINGRequestedVisibilityTag) {
    /// Anyone who has received the link can access it. No login required.
    DBXSHARINGRequestedVisibilityPublic,

    /// Only members of the same team can access the link. Login is required.
    DBXSHARINGRequestedVisibilityTeamOnly,

    /// A link-specific password is required to access the link. Login is not
    /// required.
    DBXSHARINGRequestedVisibilityPassword,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXSHARINGRequestedVisibilityTag tag;

/// Initializes union class with tag state of `Public`.
- (nonnull instancetype)initWithPublic;

/// Initializes union class with tag state of `TeamOnly`.
- (nonnull instancetype)initWithTeamOnly;

/// Initializes union class with tag state of `Password`.
- (nonnull instancetype)initWithPassword;

/// Returns whether the union's current tag state has value `Public`.
- (BOOL)isPublic;

/// Returns whether the union's current tag state has value `TeamOnly`.
- (BOOL)isTeamOnly;

/// Returns whether the union's current tag state has value `Password`.
- (BOOL)isPassword;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DBXSHARINGRequestedVisibility` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGRequestedVisibility` union.
/// 
@interface DBXSHARINGRequestedVisibilitySerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGRequestedVisibility` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGRequestedVisibility * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGRequestedVisibility` object from
/// a json-compatible dictionary representation.
+ (DBXSHARINGRequestedVisibility * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end