///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupsListContinueArg.h"

@implementation DbxTeamGroupsListContinueArg 

- (instancetype)initWithCursor:(NSString *)cursor {

    self = [super init];
    if (self != nil) {
        _cursor = cursor;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupsListContinueArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupsListContinueArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupsListContinueArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupsListContinueArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupsListContinueArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];

    return jsonDict;
}

+ (DbxTeamGroupsListContinueArg *)deserialize:(NSDictionary *)valueDict {
    NSString *cursor = [DbxStringSerializer deserialize:valueDict[@"cursor"]];

    return [[DbxTeamGroupsListContinueArg alloc] initWithCursor:cursor];
}

@end