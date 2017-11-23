# LXViewShadowPath
UIView shadowPath
![image](https://github.com/liuxinixn/LXViewShadowPath/blob/master/%E5%B1%80%E9%83%A8%E9%98%B4%E5%BD%B1.gif)

使用方法：
```
#import <UIKit/UIKit.h>
typedef enum :NSInteger{
    
    LXShadowPathLeft,
    
    LXShadowPathRight,
    
    LXShadowPathTop,

    LXShadowPathBottom,

    LXShadowPathNoTop,
    
    LXShadowPathAllSide

} LXShadowPathSide;
@interface UIView (LXShadowPath)

/*
 * shadowColor 阴影颜色
 *
 * shadowOpacity 阴影透明度，默认0
 *
 * shadowRadius  阴影半径，默认3
 *
 * shadowPathSide 设置哪一侧的阴影，
 
 * shadowPathWidth 阴影的宽度，

 */

-(void)LX_SetShadowPathWith:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(LXShadowPathSide)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth;
@end
```
