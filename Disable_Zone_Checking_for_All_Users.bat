:: Created by: Shawn Brink
:: http://www.eightforums.com/
:: Tutorial: http://www.sevenforums.com/tutorials/182353-open-file-security-warning-enable-disable.html



REG ADD "HKCU\Environment" /V SEE_MASK_NOZONECHECKS /T REG_SZ /D 1 /F

REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /V SEE_MASK_NOZONECHECKS /T REG_SZ /D 1 /F
