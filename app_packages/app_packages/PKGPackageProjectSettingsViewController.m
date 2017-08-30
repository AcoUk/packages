
#import "PKGPackageProjectSettingsViewController.h"

#import "PKGApplicationPreferences.h"

@interface PKGPackageProjectSettingsViewController ()

@end

@implementation PKGPackageProjectSettingsViewController

- (NSString *)nibName
{
	return @"PKGPackageProjectSettingsViewController";
}

- (NSUInteger)tag
{
	return PKGPreferencesGeneralPackageProjectPaneProject;
}

- (NSString *)certificatePanelMessage
{
	return NSLocalizedString(@"Choose the certificate to be used for signing the package.",@"");
}

@end
