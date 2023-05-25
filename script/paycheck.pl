use strict;
use warnings;

# Constants
my $salary = 76000;
my $biweekly = 26;  # Number of biweekly pay periods in a year
my $insurance_deduction_monthly = 700;
my $child_support_deduction_monthly = 460;
my $tax_rate_nc = 0.05;  # North Carolina tax rate
my $federal_tax_rate = 0.22;  # Federal tax rate
my $medicare_rate = 0.0145;  # Medicare tax rate
my $contribution_percentage = 0.03;  # 401k contribution percentage
my $company_match_percentage = 0.03;  # Company 401k match percentage

# Calculate biweekly paycheck
my $gross_pay = $salary / $biweekly;

# Calculate monthly deductions
my $insurance_deduction = $insurance_deduction_monthly / 2;
my $child_support_deduction = $child_support_deduction_monthly / 2;

# Calculate taxable income
my $taxable_income = $gross_pay - $insurance_deduction;

# Calculate taxes
my $state_tax = $taxable_income * $tax_rate_nc;
my $federal_tax = $taxable_income * $federal_tax_rate;
my $medicare_deduction = $gross_pay * $medicare_rate;

# Calculate 401k contribution
my $annual_401k_contribution = $salary * $contribution_percentage;
my $annual_company_401k_match = $salary * $company_match_percentage;
my $total_401k_contribution = $annual_401k_contribution + $annual_company_401k_match;
my $biweekly_401k_contribution = $total_401k_contribution / $biweekly;

# Calculate take-home pay
my $take_home_pay = $gross_pay - $state_tax - $federal_tax - $medicare_deduction - $biweekly_401k_contribution - ($child_support_deduction/2);
my $monthly_take_home_pay = $take_home_pay * 2;
my $yearly_take_home_pay = $take_home_pay * 26;


# Print results
print "Biweekly take-home pay: $take_home_pay\n";
print "Monthly take-home pay: $monthly_take_home_pay\n";
print "Yearly take-home pay: $yearly_take_home_pay\n";
print "Yearly 401k contribution: $total_401k_contribution\n";
