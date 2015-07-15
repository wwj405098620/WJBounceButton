
import UIKit

class WJBounceButton: UIButton {
    private var currentFont:UIFont! = UIFont.systemFontOfSize(10)
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.currentFont = self.titleLabel?.font;
        self.titleLabel?.font = UIFont.systemFontOfSize(currentFont.pointSize)
        self.bounds = CGRectMake(0, 0, self.bounds.size.width*0.8, self.bounds.size.height*0.8)
        super.touchesBegan(touches, withEvent: event)
    }
    override func touchesCancelled(touches: Set<NSObject>!, withEvent event: UIEvent!) {
        self.titleLabel?.font = currentFont
        self.bounds = CGRectMake(0, 0, self.bounds.size.width*1.25, self.bounds.size.height*1.25)
        super.touchesCancelled(touches, withEvent: event)
    }
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.titleLabel?.font = currentFont;
        UIView.animateWithDuration(1.2, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.bounds = CGRectMake(0, 0, self.bounds.size.width*1.25, self.bounds.size.height*1.25)
        }) { (Bool) -> Void in
        }
        super.touchesEnded(touches, withEvent: event)
    }

}
