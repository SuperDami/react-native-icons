#import "MomoIcon.h"

@implementation MomoIcon

+ (UIFont *)iconFontWithSize:(CGFloat)size
{
#ifndef DISABLE_IONICONS_AUTO_REGISTRATION
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self registerIconFontWithURL: [[NSBundle mainBundle] URLForResource:@"Momo-Font" withExtension:@"ttf"]];
    });
#endif
    
    UIFont *font = [UIFont fontWithName:@"Momo-Font" size:size];
    NSAssert(font, @"UIFont object should not be nil, check if the font file is added to the application bundle and you're using the correct font name.");
    return font;
}

+ (NSDictionary *)allIcons {
    return @{
             };
}

+ (NSDictionary *)iconCodes {
    return @{
             @"heart-f":@0xe600,
             @"thumb-f":@0xe601,
             @"keyboard-f":@0xe606,
             @"crown-f":@0xe5e2,
             @"trophy":@0xe605,
             @"close":@0xe082,
             @"link":@0xe08d,
             @"write":@0xe060,
             @"bell":@0xe027,
             @"bubbles":@0xe04a,
             @"check":@0xe608,
             @"comment":@0xe60a,
             @"dot-list":@0xe60c,
             @"envelope-open":@0xe01f,
             @"eye":@0xe087,
             @"grid":@0xe06a,
             @"heart":@0xe08a,
             @"thumb":@0xe068,
             @"location":@0xe096,
             @"rocket":@0xe61a,
             @"plane":@0xe012,
             @"search":@0xe090,
             @"setting":@0xe09a,
             @"star":@0xe09b,
             @"tag":@0xe055,
             @"trash":@0xe054,
             @"leaf-f":@0xe604,
             @"triangle-f":@0xe602,
             @"useful":@0xe603,
             @"earth":@0xe037,
             @"user":@0xe005,
             @"add":@0xe095,
             @"bubble":@0xe07d,
             @"camera":@0xe07f,
             @"coin":@0xe609,
             @"copy":@0xe60b,
             @"emotion":@0xe021,
             @"envelope":@0xe086,
             @"gift":@0xe02f,
             @"fire":@0xe01c,
             @"help":@0xe05d,
             @"list":@0xe617,
             @"magic-wand":@0xe017,
             @"package":@0xe05c,
             @"return":@0xe61d,
             @"bag":@0xe04f,
             @"share":@0xe05a,
             @"support":@0xe03c,
             @"to-top":@0xe625,

             };
}
@end
