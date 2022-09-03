function Get-iplist
{
    param ( [string]$IPaddress,$cidr)
    $actIP = $IPaddress.split(".")
    $actipint = @()
        foreach($i in $actIP)
        {
         $actipint+=[int]$i
        }
    $iplist = @()
    $temp1 = $actipint
    $temp2 = $actipint[3]
    $size = [Math]::pow(2,(32-$cidr))
    for($i=$size;$i -ge 1;$i--)
      {
       $temp1[3]=$temp2
       $iplist+= $temp1 -join "."
       $temp2+=1
       
       if($temp1[1] -eq 255)
        {
          $temp1[0]+=1
          $temp1[1]=0
        }
       if($temp1[2] -eq 255)
        {
          $temp1[1]+=1
          $temp1[2]=0
        }
       if($temp1[3] -eq 255)
        {
         $temp1[2]+=1
         $temp2 = 0
        }  
       }
    return $iplist
}

$a = Get-iplist -IPaddress "192.168.1.0" -cidr 20




