//
//  TempConverterViewController.h
//  tempconverter
//
//  Created by Alvaro  Morales on 7/29/13.
//

#import <UIKit/UIKit.h>

@interface TempConverterViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,weak) IBOutlet UITextField *cTextField; // celsius
@property (nonatomic,weak) IBOutlet UITextField *fTextField; // fahrenheit
@property (nonatomic,weak) IBOutlet UIButton *convertButton;

-(IBAction)convertButtonPressed:(id)sender;

@end
