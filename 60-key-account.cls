public Boolean isKeyAccount(Account a) {
    switch on a.Industry {
        when 'Banking' {
            return a.AnnualRevenue >= 600000;
        }
        when 'Technology' {
            return a.AnnualRevenue >= 800000;
        }
        when 'Retail' {
            return a.AnnualRevenue >= 2000000;
        }
        when else {
            return a.AnnualRevenue >= 500000;
        }
    }
}
