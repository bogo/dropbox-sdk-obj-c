///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamRevokeLinkedApiAppArg.h"

@implementation DbxTeamRevokeLinkedApiAppArg 

- (instancetype)initWithAppId:(NSString *)appId teamMemberId:(NSString *)teamMemberId keepAppFolder:(NSNumber *)keepAppFolder {

    self = [super init];
    if (self != nil) {
        _appId = appId;
        _teamMemberId = teamMemberId;
        _keepAppFolder = keepAppFolder ?: @YES;
    }
    return self;
}

- (instancetype)initWithAppId:(NSString *)appId teamMemberId:(NSString *)teamMemberId {
    return [self initWithAppId:appId teamMemberId:teamMemberId keepAppFolder:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamRevokeLinkedApiAppArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamRevokeLinkedApiAppArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamRevokeLinkedApiAppArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamRevokeLinkedApiAppArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamRevokeLinkedApiAppArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"app_id"] = [DbxStringSerializer serialize:valueObj.appId];
    jsonDict[@"team_member_id"] = [DbxStringSerializer serialize:valueObj.teamMemberId];
    jsonDict[@"keep_app_folder"] = [DbxBoolSerializer serialize:valueObj.keepAppFolder];

    return jsonDict;
}

+ (DbxTeamRevokeLinkedApiAppArg *)deserialize:(NSDictionary *)valueDict {
    NSString *appId = [DbxStringSerializer deserialize:valueDict[@"app_id"]];
    NSString *teamMemberId = [DbxStringSerializer deserialize:valueDict[@"team_member_id"]];
    NSNumber *keepAppFolder = [DbxBoolSerializer deserialize:valueDict[@"keep_app_folder"]];

    return [[DbxTeamRevokeLinkedApiAppArg alloc] initWithAppId:appId teamMemberId:teamMemberId keepAppFolder:keepAppFolder];
}

@end