$newUser = @{
    SamAccountName = "honeyuser1" # logon name
    UserPrincipalName = "honeyuser1@ht.local" # principal name
    Name = "honeyuser1" # full name
    GivenName = "honeyuser1" # first name
    Surname = "honeyuser1" # last name
    Enabled = $false # disable account
    DisplayName = "honeyuser1" # display name
    Path = "OU=HoneyUsers,DC=ht,DC=local" # OU path - needs to be linked to Honeytoken Audit Policy
    AccountPassword = (ConvertTo-SecureString "LongRandomString12345!#¤%&" -AsPlainText -Force) # random password
    ChangePasswordAtLogon = $false # Cannot change password
    Department = "honeyuser" # Optional department
    Title = "honeyuser" # Optional job title
}

# Create the new user
New-ADUser @newUser
