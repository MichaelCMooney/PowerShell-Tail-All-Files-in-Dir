Workflow Tail
{

    Param([string[]] $Path)

    foreach -parallel ($file in $path)
    {
        Get-Content -Path $file -Tail 1 -Wait
    }

}

Tail (dir C:\DIR\*.log)
