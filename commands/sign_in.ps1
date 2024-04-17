# Sign-in
Connect-AzAccount

# If no web-browser or if the first fails:
Connect-AzAccount -UseDeviceAuthentication


# Sign-in to different Tenant:
Connect-AzAccount -Tenant '00000000-0000-0000-0000-000000000000'