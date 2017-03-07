configuration testConfiguration
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-DSCResource -ModuleName {{cookiecutter.project_slug}}

    Node $NodeName
    {

    }
}
