# ZBLogHelper
封装了工具，专门打印log ,可以把文件名，行号，内容记录到沙盒中，方便查看问题具体出错原因。
``` javascript

#import "ViewController.h"

#import "ZBLogHelper.h"
#define location   [NSString stringWithFormat:@"[ %s :%d行]", [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],__LINE__]


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    NSString *srt = @"hello";
    
    [ZBLogHelper writeIn:srt Location: location];
    
    
    NSString *srtrrrr = @"sb";
    
    
    
    [ZBLogHelper writeIn:srtrrrr Location: location];

  
   
}

```