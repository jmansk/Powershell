    function Planit_National {
        param (
            $user,
            $computer
        )
          

  Add-ADGroupMember -Identity "u1" -Members $user
    
      

  Write-Host "Added user to u1"      

  Add-ADGroupMember -Identity "u2" -Members $user
    
      

  Write-Host "Added user to u2"      

  Add-ADGroupMember -Identity "u3" -Members $user
    
      

  Write-Host "Added user to u3"       

 Add-ADGroupMember -Identity "p1" -Members $computer
    
     

   Write-Host "Added computer to p1"       

 Add-ADGroupMember -Identity "p2" -Members $computer
    
     

   Write-Host "Added computer to p2"       

 Add-ADGroupMember -Identity "p3" -Members $computer
    
     

   Write-Host "Added computer to p3"      

  return "Planit National"
    }
    function Planit_Regional {
        param (
            $user,
            $computer
        )
          

  Add-ADGroupMember -Identity "u1" -Members $user
    
      

  Write-Host "Added user to u1"      

  Add-ADGroupMember -Identity "u2" -Members $user
    
      

  Write-Host "Added user to u2"      

  Add-ADGroupMember -Identity "u3" -Members $user
    
      

  Write-Host "Added user to u3"       

 Add-ADGroupMember -Identity "p1" -Members $computer
    
     

   Write-Host "Added computer to p1"       

 Add-ADGroupMember -Identity "p2" -Members $computer
    
     

   Write-Host "Added computer to p2"       

 Add-ADGroupMember -Identity "p3" -Members $computer
    
     

   Write-Host "Added computer to p3"      

  return "Planit Regional"
    }
    function zetta_regional {
        param (
            $user,
            $computer
        )
          

  Add-ADGroupMember -Identity "u1" -Members $user
    
      

  Write-Host "Added user to u1"      

  Add-ADGroupMember -Identity "u2" -Members $user
    
      

  Write-Host "Added user to u2"      

  Add-ADGroupMember -Identity "u3" -Members $user
    
      

  Write-Host "Added user to u3"       

 Add-ADGroupMember -Identity "p1" -Members $computer
    
     

   Write-Host "Added computer to p1"       

 Add-ADGroupMember -Identity "p2" -Members $computer
    
     

   Write-Host "Added computer to p2"       

 Add-ADGroupMember -Identity "p3" -Members $computer
    
     

   Write-Host "Added computer to p3"      

  return "zetta regional"
    }
    function Burli_NE {
        param (
            $user,
            $computer
        )
          

  Add-ADGroupMember -Identity "u1" -Members $user
    
      

  Write-Host "Added user to u1"       

 Add-ADGroupMember -Identity "p1" -Members $computer
    
     

   Write-Host "Added computer to p1"      

  return "Burli NE"
    }
    function ju_Test {
        param (
            $user,
            $computer
        )
          

  Add-ADGroupMember -Identity "us1" -Members $user
    
      

  Write-Host "Added user to us1"      

  Add-ADGroupMember -Identity "us2" -Members $user
    
      

  Write-Host "Added user to us2"      

  Add-ADGroupMember -Identity "ur3" -Members $user
    
      

  Write-Host "Added user to ur3"       

 Add-ADGroupMember -Identity "px1" -Members $computer
    
     

   Write-Host "Added computer to px1"       

 Add-ADGroupMember -Identity "pc1" -Members $computer
    
     

   Write-Host "Added computer to pc1"       

 Add-ADGroupMember -Identity "pv4" -Members $computer
    
     

   Write-Host "Added computer to pv4"      

  return "ju Test"
    }
