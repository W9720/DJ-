// 传书纪会员破解 Tweak
// 适配 Dopamine Rootless

#import <Foundation/Foundation.h>

// 2099年1月1日 00:00:00 UTC 的毫秒时间戳
#define VIP_EXPIRE_TIME 2524608000000LL
#define CUSTOM_NICKNAME @"喜爱民谣破解测试"

%hook SQUserModel

- (BOOL)isvip {
    return YES;
}

- (long long)expiretime {
    return VIP_EXPIRE_TIME;
}

- (NSString *)nickname {
    return CUSTOM_NICKNAME;
}

%end

%hook SQLoginResultUserModel

- (BOOL)isvip {
    return YES;
}

- (long long)expiretime {
    return VIP_EXPIRE_TIME;
}

- (NSString *)nickname {
    return CUSTOM_NICKNAME;
}

%end

%hook SQMemberDetailModel

- (NSString *)nickname {
    return CUSTOM_NICKNAME;
}

%end

%hook SQUserAddTimeModel

- (NSString *)nickname {
    return CUSTOM_NICKNAME;
}

%end

%hook SQUserHotModel

- (NSString *)nickname {
    return CUSTOM_NICKNAME;
}

%end

%hook SQCommonUserModel

- (NSString *)nickname {
    return CUSTOM_NICKNAME;
}

%end

%hook SQMedalUserModel

- (NSString *)nickname {
    return CUSTOM_NICKNAME;
}

%end
