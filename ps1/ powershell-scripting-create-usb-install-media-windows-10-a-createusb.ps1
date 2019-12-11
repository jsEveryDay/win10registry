##########################################################
# Creating a bootable USB drive for installing Windows
# on UEFI / GPT systems
##########################################################

##########################################################
# Start by clearing the screen, tell user how to start 
##########################################################

cls
Write-Host
Write-Host ' Plug in a USB flash (thumb) drive, recommended'
Write-Host ' size (standard W10 install media) 6 GB or more.'
Write-Host  
Write-Host ' Notice: Remove all other USB flash drives'
Write-Host ' leaving only the one to be used connected.'
Write-Host  
Write-Host ' If more than 1 USB flash drives are connected'
Write-Host ' this process will fail.'
Write-Host  
Write-Host ' External USB hard disks may remain connected,'
Write-Host ' just remove all additional USB flash drives.'
Write-Host

##########################################################
# Pause to wait a key to be pressed, then check connected
# disks showing their name and ID asking user to select
# the USB flash drive to be used. Showing clear warning to
# user with magenta text color to be sure user understands
# risks involved, cleaning wrong disk will cause issues!
##########################################################

pause
cls
Write-Host
Write-Host 'Checking connected disks. This might take a while...'
Write-Host
Get-Disk | Format-Table Number, Friendlyname, HealthStatus, PartitionStyle,
            @{n='Size';e={[int]($_.Size/1GB)}}         
Write-Host                                                                        
Write-Host ' Above is a list of all your connected disks.'
Write-Host ' Size is given in full gigabytes (GB).'
Write-Host 
Write-Host ' Enter the Disk Number (left  column) for USB'
Write-Host ' flash (thumb) drive to be made as bootable'
Write-Host ' Windows install media.'
Write-Host 
Write-Host '############################################################' -ForeGround Magenta 
Write-Host '# Be extremely careful!                                    #' -ForeGround Magenta 
Write-Host '#                                                          #' -ForeGround Magenta 
Write-Host '# Selected disk will be wiped clean and formatted.         #' -ForeGround Magenta 
Write-Host '# Selecting wrong disk, you will lose any data on it.      #' -ForeGround Magenta 
Write-Host '#                                                          #' -ForeGround Magenta 
Write-Host '# Accidentally selecting disk containing Windows, you will #' -ForeGround Magenta 
Write-Host '# make it unbootable, in which case you will lose all your #' -ForeGround Magenta 
Write-Host '# installed software and personal user files and folders!  #' -ForeGround Magenta 
Write-Host '#                                                          #' -ForeGround Magenta 
Write-Host '# If you are unsure, press CTRL + C to abort now.          #' -ForeGround Magenta 
Write-Host '############################################################' -ForeGround Magenta 
Write-Host
 
##########################################################
# Getting the USB ID number from user, asking one more
# time if user is sure and wants to proceed. To avoid any
# liability issues, user is asked not only to press a key
# but clearly type YES. If a wrong disk fill be cleaned
# and formatted after this, it's caused by user not script
##########################################################

$USBNUMBER = Read-Host -Prompt ' Enter your selection, and press Enter'

cls
Write-Host                                                                        
Write-Host ' Are you sure?'
Write-Host  
Write-Host ' Selected disk will be completely wiped and formatted!'
Write-Host 
Write-Host ' Please type YES (not case sensitive) and press Enter'
Write-Host ' to confirm, any other key or string + Enter to exit.'
Write-Host
 
$AreYouSure = Read-Host -Prompt ' Type YES and press Enter to confirm'

    if ($AreYouSure -ne 'YES')
        {exit}

cls
Write-Host
Write-Host ' Wiping USB flash drive clean & formatting it'

Clear-Disk -Number $USBNUMBER -RemoveData
New-Partition -DiskNumber $USBNUMBER -UseMaximumSize -AssignDriveLetter 

$USBDrive = Get-WmiObject Win32_Volume -Filter "DriveType='2'"
$USBDrive = $USBDrive.DriveLetter

Format-Volume -NewFileSystemLabel "W10 USB" -FileSystem FAT32 -DriveLetter $USBDrive.Trim(":", " ")

$USBDrive = ($USBDrive + '\')

##########################################################
# USB flash drive cleaned and formatted, asking user to
# mount ISO and enter its drive letter. Entered drive
# letter or path will be written to variable $ISOFolder
##########################################################

cls
Write-Host 
Write-Host ' Right click a Windows 10 ISO image and select "Mount".'
Write-Host 
Write-Host ' When done, enter the drive letter of mounted ISO'
Write-Host ' below and press Enter.'
Write-Host 
Write-Host ' If you want to add additional files and folders to USB,'
Write-Host ' copy the the contents of mounted ISO to a folder. Copy'
Write-Host ' additional content for instance customised "autounattend.xml"'
Write-Host ' for unattended "Hands-Free" installation, driver installers'
Write-Host ' and such to same folder, enter the path to that folder'
Write-Host ' and press Enter.'
Write-Host
Write-Host ' Examples:'
Write-Host ' - ISO mounted as drive F:, no additional content required, enter F'
Write-Host ' - ISO contents copied to "D:\ISO_Files", enter D:\ISO_Files'
Write-Host ' - ISO contents copied to "X:\MyStuff\ISO", enter X:\MyStuff\ISO' 
Write-Host
$ISOFolder = Read-Host -Prompt ' Enter path to source folder, press Enter'

##########################################################
# Check if path entered by user is a drive letter by
# checking its length. If length is a single character, 
# it is a drive letter for mounted ISO in which case we
# add a colon (:) to variable value, X becoming X:
##########################################################

if ($ISOFolder.length -eq 1)
    {$ISOFolder = $ISOFolder + ":"}

##########################################################
# Check if entered mounted ISO or path to folder contains
# \Sources\install.wim (or install.esd) file (single bit
# architecture ISO), or in case of dual architecture ISO
# if install.wim (or install.esd) file can be found either
# in \x86\Sources or \x64\Sources folder or both of them.
#
# If install.wim or install.esd file is not found, given
# mounted ISO or folder path does not contain valid 
# W10 install files in which case script is aborted.  
##########################################################

$WimCount = 0
if ((Test-Path $ISOFolder\Sources\install.wim) -or 
    (Test-Path $ISOFolder\x86\Sources\install.wim) -or
    (Test-Path $ISOFolder\x64\Sources\install.wim) -or
    (Test-Path $ISOFolder\Sources\install.esd) -or 
    (Test-Path $ISOFolder\x86\Sources\install.esd) -or
    (Test-Path $ISOFolder\x64\Sources\install.esd))
        {$WimCount = 1}        
    else 
        {
        cls
        Write-Host
        Write-Host ' No Windows 10 installation files found.'
        Write-Host ' Please check mounted ISO letter or path'
        Write-Host ' to folder containing installation files'
        Write-Host ' and run script again.'
        Write-Host
        Pause
        Exit
        }
        
##########################################################
# Copying ISO content to USB flash drive
##########################################################

cls
$Files = Get-ChildItem -Path $ISOFolder -Recurse
$FileCount = $Files.count
$i=0
Foreach ($File in $Files) {
    $i++
    Write-Progress -activity "Copying files to USB. Get a cup of java or shot of single malt, this will take a few minutes..." -status "$File ($i of $FileCount)" -percentcomplete (($i/$FileCount)*100)
    if ($File.psiscontainer) {$SourcefileContainer = $File.parent} else {$SourcefileContainer = $File.directory}
    $RelativePath = $SourcefileContainer.fullname.SubString($ISOFolder.length)
    Copy-Item $File.fullname ($USBDrive + $RelativePath) 
}

##########################################################
# Telling user a bootable USB flash drive has been 
# and showing "Free to share" plus credits
##########################################################

cls
Write-Host                                                                        
Write-Host ' Bootable Windows 10 USB drive for installing'
Write-Host ' Windows 10 on UEFI / GPT computers 
Write-Host
Write-Host ' You are free to edit and share this script'
Write-Host ' as long as source TenForums.com is mentioned'
Write-Host   
Write-Host ' More Windows 10 tips, tricks, videos & 
Write-Host 
Write-Host ' Twitter.com/TenForums -- Facebook.com/TenForums'
Write-Host  
Write-Host ' Script by Kari'
Write-Host ' - TenForums.com/members/kari.html'
Write-Host ' - Twitter.com/KariTheFinn'
Write-Host ' - YouTube.com/KariTheFinn'
Write-Host 
Write-Host 
