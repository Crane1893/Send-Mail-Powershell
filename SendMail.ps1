$EmailFrom = “sender@domain.com”
$EmailTo = “receiver@domain.com”
$Subject = “Subject Line”
$Body = “Body Text”

$emailattachment = "C:\Path\to\file.zip"

$SMTPServer = “mail.server.com”
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential(“sender@domain.com”, “CleartextPassword”);
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)