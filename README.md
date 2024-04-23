Script to delete oemXXX.inf files(XXX is a value range consisting between 1-3 number) in imaged Windows machines

Issue:
  Imaged Windows machines is being prevented from being completely shutting down. Source of the issue is a .inf file located in C:\Windows\System32\DriverStore\FileRepository\


Resolution:
  In the mentioned directory, locate if said file exists. And if it does, delete file (Machine restart should follow to apply changes)
