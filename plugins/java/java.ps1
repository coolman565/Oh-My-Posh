# Add Java to PowerShell
if($env:JAVA_HOME){
    Set-Alias javac $env:JAVA_HOME\bin\javac.exe
    Set-Alias java $env:JAVA_HOME\bin\java.exe
    Set-Alias jar $env:JAVA_HOME\bin\jar.exe
    Set-Alias jps $env:JAVA_HOME\bin\jps.exe
}

# Add Maven to PowerShell

# Setup maven
if($env:M2_HOME){
    # Fast builds with no tests, but multithreading
    function mvn-mt{
            $cmd = "$env:M2_HOME\bin\mvn.cmd -TC1 -DskipTests $args"
            Invoke-Expression($cmd)       
    }
    function mvn{
            $cmd = "$env:M2_HOME\bin\mvn.cmd $args"
            Invoke-Expression($cmd)       
    }
} 