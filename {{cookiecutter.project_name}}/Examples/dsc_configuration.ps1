configuration {{cookiecutter.project_name}}
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-DSCResource -ModuleName {{cookiecutter.project_name}}

    Node $NodeName
    {
      
        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = $Ensure
            Name            = "Web-Server"
        }

    }
}
