//
//  main.m
//  pingpangtest
//
//  Created by yaogang on 2017/1/14.
//  Copyright © 2017年 yuneec. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    int kyleStore = 0;
    int nasenStore = 0;
    
    int pointWinner;
    
    bool gamePlaying = YES;
    
    NSString *gameWinner;
    
    
    while (gamePlaying) {
        
        pointWinner = arc4random()%2;
        
        if(pointWinner == 0) {
            kyleStore++;
        }else{
            nasenStore++;
        }
        
        if((kyleStore >=21 || nasenStore >=21) && ((kyleStore -nasenStore >= 2) || (nasenStore - kyleStore >= 2)) ) {
            
            gameWinner = kyleStore > nasenStore ? @"Kyle": @"Nasen";
            gamePlaying = NO;
        
        
        
        }
            
            
            
    }

    
    NSLog(@"The winner is %@", gameWinner);
    
    

    
    
    
    
    
    
    
    
    return 0;
}
