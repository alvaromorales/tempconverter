//
//  TempConverterViewController.m
//  tempconverter
//
//  Created by Alvaro  Morales on 7/29/13.
//

#import "TempConverterViewController.h"

@interface TempConverterViewController ()

@end

@implementation TempConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"TempConverter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.cTextField.delegate = self;
    self.fTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertButtonPressed:(id)sender {
    UIButton *button = (UIButton *)sender;
    if (button.tag == 0) {
        double fahrenheit = [self.cTextField.text doubleValue]*9.0/5.0 + 32.0;
        self.fTextField.text = [NSString stringWithFormat:@"%f", fahrenheit];
    } else {
        double celsius = ([self.fTextField.text doubleValue]-32)*5/9;
        self.cTextField.text = [NSString stringWithFormat:@"%f", celsius];
    }
}

#pragma mark - UITextField delegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [self changeCurrentUnit];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self changeCurrentUnit];
}

- (void)changeCurrentUnit {
    if ([self.cTextField isFirstResponder]) {
        self.convertButton.tag = 0;
    } else {
        self.convertButton.tag = 1;
    }
}

@end
