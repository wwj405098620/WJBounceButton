

#import "WJBounceButton.h"

@interface WJBounceButton()
@property (nonatomic,strong) UIFont *currentFont;
@end
@implementation WJBounceButton

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    self.currentFont = self.titleLabel.font;
    self.titleLabel.font = [UIFont systemFontOfSize:_currentFont.pointSize-2];
    self.bounds = CGRectMake(0, 0, self.bounds.size.width*0.8, self.bounds.size.height*0.8);
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesCancelled:touches withEvent:event];
    self.titleLabel.font = self.currentFont;
    self.bounds = CGRectMake(0, 0, self.bounds.size.width*1.25, self.bounds.size.height*1.25);
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    self.titleLabel.font = self.currentFont;
    [UIView animateWithDuration:1.2 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.bounds = CGRectMake(0, 0, self.bounds.size.width*1.25, self.bounds.size.height*1.25);
    } completion:^(BOOL finished) {
    }];
}
@end
