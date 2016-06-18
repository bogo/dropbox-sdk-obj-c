///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamPoliciesSharedLinkCreatePolicy.h"

@implementation DbxTeamPoliciesSharedLinkCreatePolicy 

- (instancetype)initWithDefaultPublic {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultPublic;
    }
    return self;
}

- (instancetype)initWithDefaultTeamOnly {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultTeamOnly;
    }
    return self;
}

- (instancetype)initWithTeamOnly {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyTeamOnly;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyOther;
    }
    return self;
}

- (BOOL)isDefaultPublic {
    return _tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultPublic;
}

- (BOOL)isDefaultTeamOnly {
    return _tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultTeamOnly;
}

- (BOOL)isTeamOnly {
    return _tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyTeamOnly;
}

- (BOOL)isOther {
    return _tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyOther;
}

- (NSString *)getTagName {
    if (_tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultPublic) {
        return @"(TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultPublic";
    }
    if (_tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultTeamOnly) {
        return @"(TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyDefaultTeamOnly";
    }
    if (_tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyTeamOnly) {
        return @"(TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyTeamOnly";
    }
    if (_tag == (TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyOther) {
        return @"(TeamPoliciesSharedLinkCreatePolicyTag)TeamPoliciesSharedLinkCreatePolicyOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamPoliciesSharedLinkCreatePolicySerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamPoliciesSharedLinkCreatePolicySerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamPoliciesSharedLinkCreatePolicySerializer serialize:self] description];
}

@end


@implementation DbxTeamPoliciesSharedLinkCreatePolicySerializer 

+ (NSDictionary *)serialize:(DbxTeamPoliciesSharedLinkCreatePolicy *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isDefaultPublic]) {
        jsonDict[@".tag"] = @"default_public";
    }
    else if ([valueObj isDefaultTeamOnly]) {
        jsonDict[@".tag"] = @"default_team_only";
    }
    else if ([valueObj isTeamOnly]) {
        jsonDict[@".tag"] = @"team_only";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamPoliciesSharedLinkCreatePolicy *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"default_public"]) {
        return [[DbxTeamPoliciesSharedLinkCreatePolicy alloc] initWithDefaultPublic];
    }
    if ([tag isEqualToString:@"default_team_only"]) {
        return [[DbxTeamPoliciesSharedLinkCreatePolicy alloc] initWithDefaultTeamOnly];
    }
    if ([tag isEqualToString:@"team_only"]) {
        return [[DbxTeamPoliciesSharedLinkCreatePolicy alloc] initWithTeamOnly];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamPoliciesSharedLinkCreatePolicy alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end