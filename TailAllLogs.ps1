Workflow My-Tail
{

    Param([string[]] $Path)

    foreach -parallel ($file in $path)
    {
        Get-Content -Path $file -Tail 1 -Wait
    }

}

My-Tail (dir C:\OMAPerformanceTools\PerfTest\v4\omatest\logs\*.log)